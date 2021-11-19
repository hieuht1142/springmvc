package springmvcdemo.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public abstract class BaseEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "created_date")
	@CreatedDate
	private Date createdDate;
	
	@Column(name = "modifed_date")
	@LastModifiedDate
	private Date modifedDate;
	
	@Column(name = "create_by")
	@CreatedBy
	private String createdBy;
	
	@Column(name = "modifed_by")
	@LastModifiedBy
	private String modifedBy;

	public Long getId() {
		return id;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public Date getModifedDate() {
		return modifedDate;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public String getModifedBy() {
		return modifedBy;
	}
}
