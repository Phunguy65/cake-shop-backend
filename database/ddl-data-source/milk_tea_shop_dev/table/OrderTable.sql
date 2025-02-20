create table if not exists milk_tea_shop_dev.OrderTable
(
    order_table_id int auto_increment comment 'Mã đơn hàng và bàn'
        primary key,
    order_id       int                                not null comment 'Mã đơn hàng',
    table_id       int                                not null comment 'Mã bàn',
    check_in       datetime                           not null comment 'Thời gian vào bàn',
    check_out      datetime                           null comment 'Thời gian rời bàn',
    created_at     datetime default CURRENT_TIMESTAMP null,
    updated_at     datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    constraint OrderTable_pk
        unique (order_id, table_id),
    constraint OrderTable_ibfk_1
        foreign key (order_id) references milk_tea_shop_dev.`Order` (order_id),
    constraint OrderTable_ibfk_2
        foreign key (table_id) references milk_tea_shop_dev.ServiceTable (table_id)
);

