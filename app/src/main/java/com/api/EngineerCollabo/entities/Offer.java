package com.api.EngineerCollabo.entities;

import java.util.Date;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@EntityListeners(AuditingEntityListener.class)
@Table(name = "offers")
public class Offer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "message", nullable = true, columnDefinition = "TEXT")
    private String message;

    @Column(name = "user_id")
    private Integer userId;

    @Column(name = "scouted_user_id")
    private Integer scoutedUserId;

    @Column(name = "project_id")
    private Integer projectId;

    @CreatedDate
    @Column(name = "created_at", updatable = false)
    private Date createdAt;

    @LastModifiedDate
    @Column(name = "updated_at")
    private Date updatedAt;

    @ManyToOne()
    @JoinColumn(name = "scouted_user_id", nullable = false, referencedColumnName = "id", insertable = false, updatable = false)
    private User scoutedUser;

    @ManyToOne()
    @JoinColumn(name = "user_id", nullable = false, referencedColumnName = "id", insertable = false, updatable = false)
    private User user;
    
    @ManyToOne()
    @JoinColumn(name = "project_id", nullable = false, referencedColumnName = "id", insertable = false, updatable = false)
    private Project project;
}