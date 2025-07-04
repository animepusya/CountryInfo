//
//  MapView.swift
//  CountryInfo
//
//  Created by Руслан Меланин on 03.07.2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(position: .constant(.region(
            MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: 55.7558, longitude: 37.6176),
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 10)
            )
        )))
    }
}

#Preview {
    MapView()
}
