package com.hackathon.demo.entity;

import jakarta.persistence.*;
import java.util.UUID;
import java.util.Set;

@Entity
@Table(name = "vehiclecampaign")
public class VehicleCampaign {

    @Id
    private UUID id;

    @Column(name = "campaign_name")
    private String campaignName;

    // Relationship to Vehicle
    @ManyToOne
    @JoinColumn(name = "vehicle_id", nullable = false)
    private Vehicles vehicle;

    // Relationship to CampaignStatus
    @OneToMany(mappedBy = "vehicleCampaign")
    private Set<VehicleCampaignStatus> campaignStatuses;

    // Getters and setters...
}