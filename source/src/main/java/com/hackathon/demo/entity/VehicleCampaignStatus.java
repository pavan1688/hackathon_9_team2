package com.hackathon.demo.entity;

import jakarta.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "campaignstatus")
public class VehicleCampaignStatus {

    @Id
    private UUID id;

    private String status;

    // Relationship to VehicleCampaign
    @ManyToOne
    @JoinColumn(name = "campaign_id", nullable = false)
    private VehicleCampaign vehicleCampaign;

}