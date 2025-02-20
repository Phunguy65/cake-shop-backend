create table if not exists milk_tea_shop_dev.Expense
(
    expense_id          int auto_increment comment 'Mã chi phí'
        primary key,
    account_id          int                                null comment 'Mã tài khoản',
    expense_category_id int                                null comment 'Mã loại chi phí',
    amount              decimal(10, 2)                     not null comment 'Số tiền',
    transaction_date    datetime default CURRENT_TIMESTAMP null comment 'Ngày giao dịch',
    description         text                               null comment 'Mô tả',
    created_at          datetime default CURRENT_TIMESTAMP null,
    updated_at          datetime default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    constraint Expense_ibfk_1
        foreign key (account_id) references milk_tea_shop_dev.Account (account_id),
    constraint Expense_ibfk_2
        foreign key (expense_category_id) references milk_tea_shop_dev.ExpenseCategory (expense_category_id)
);

