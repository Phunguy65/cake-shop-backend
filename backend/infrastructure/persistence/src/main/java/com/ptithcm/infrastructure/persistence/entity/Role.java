package com.ptithcm.infrastructure.persistence.entity;

import com.ptithcm.infrastructure.persistence.BaseEntity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Comment;

@Getter
@Setter
@Entity
@Table(name = "Role", schema = "milk_tea_shop_prod", uniqueConstraints = {
        @UniqueConstraint(name = "Role_pk", columnNames = {"name"})
})
@AttributeOverrides({
        @AttributeOverride(name = "createdAt", column = @Column(name = "created_at")),
        @AttributeOverride(name = "updatedAt", column = @Column(name = "updated_at"))
})
public class Role extends BaseEntity<Short> {
    @Id
    @Comment("Mã vai trò")
    @Column(name = "role_id", columnDefinition = "tinyint UNSIGNED not null")
    private Short id;

    @Comment("Tên vai trò (ví dụ: admin, staff, customer)")
    @Column(name = "name", nullable = false, length = 50)
    private String name;

    @Comment("Mô tả vai trò")
    @Column(name = "description", length = 1000)
    private String description;

}