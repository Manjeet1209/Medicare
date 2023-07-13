package com.med.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Medicinehome {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String manufacture;
	private String xpiry;
	private Integer price;
	
	public Medicinehome() {
		
	}

	public Medicinehome(Integer id, String name, String manufacture, String xpiry, Integer price) {
		super();
		this.id = id;
		this.name = name;
		this.manufacture = manufacture;
		this.xpiry = xpiry;
		this.price = price;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getManufacture() {
		return manufacture;
	}

	public void setManufacture(String manufacture) {
		this.manufacture = manufacture;
	}

	public String getXpiry() {
		return xpiry;
	}

	public void setXpiry(String xpiry) {
		this.xpiry = xpiry;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Medicinehome [id=" + id + ", name=" + name + ", manufacture=" + manufacture + ", xpiry=" + xpiry
				+ ", price=" + price + "]";
	}
	
	

}
