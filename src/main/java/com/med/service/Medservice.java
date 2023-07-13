package com.med.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.med.repository.MedicinehomeRepository;
import com.med.repository.RegistrationRepository;
import com.med.model.Medicinehome;
import com.med.model.Registration;

@Service
public class Medservice {
	
	@Autowired
	MedicinehomeRepository mrepo;
	@Autowired
	RegistrationRepository regis;
	
	public List<Medicinehome> show() {
		List<Medicinehome> list = mrepo.findAll();
		return list;
	}
	
	public Medicinehome show2(int id) {
		   Medicinehome vq = mrepo.findById(id).get();
		   return vq;
	  }
	
	public void add(Registration reg) {
		regis.save(reg);
	}
	
	public List<Registration> data() {
		List<Registration> list = regis.findAll();
		return list;
	}
	

}
