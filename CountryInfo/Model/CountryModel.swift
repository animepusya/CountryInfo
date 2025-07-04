//
//  CountryModel.swift
//  CountryInfo
//
//  Created by Руслан Меланин on 04.07.2025.
//

import Foundation
import CoreLocation

struct Country: Identifiable, Codable, Hashable {
    
    var id: String { alpha3Code }
    
    let name: String
    let alpha3Code: String
    let capital: String
    let region: String
    let population: Int
    let area: Double?
    let latlng: [Double]
    let flag: String
    let currencies: [Currency]

    struct Currency: Codable, Hashable {
        let code: String?
        let name: String?
        let symbol: String?
    }
    
    var locationCoordinate: CLLocationCoordinate2D? {
            guard latlng.count == 2 else { return nil }
            return CLLocationCoordinate2D(latitude: latlng[0], longitude: latlng[1])
        }
    
    var flagURL: URL? {
            URL(string: flag)
        }

}
