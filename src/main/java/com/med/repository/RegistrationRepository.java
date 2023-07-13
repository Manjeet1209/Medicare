package com.med.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.med.model.Registration;

@Repository
public interface RegistrationRepository extends JpaRepository<Registration,Integer> {

}
