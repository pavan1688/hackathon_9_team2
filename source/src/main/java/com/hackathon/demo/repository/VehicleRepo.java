package com.hackathon.demo.repository;

import com.hackathon.demo.entity.Vehicles;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VehicleRepo extends JpaRepository<Vehicles,Long> {

}
