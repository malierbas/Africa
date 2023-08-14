//
//  LocationModel.swift
//  Africa
//
//  Created by Ali on 10.10.2021.
//

import Foundation
import CoreLocation

struct NationalParkLocation: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
