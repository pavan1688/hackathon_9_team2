package com.hackathon.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;
import java.util.UUID;

@Getter
@Setter
@Entity
@Table(name = "vehicles")
public class Vehicles {

    @Id
    private UUID id;

    private String vin;

    private String manufacturer;

    private String model;

    private String make;

    // Relationship to VehicleCampaign
    @OneToMany(mappedBy = "vehicle")
    private Set<VehicleCampaign> vehicleCampaigns;

}