package com.med.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.med.model.Medicinehome;

@Repository
public interface MedicinehomeRepository extends JpaRepository<Medicinehome, Integer> {

}
