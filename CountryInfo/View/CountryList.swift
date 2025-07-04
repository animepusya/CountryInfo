//
//  CountryList.swift
//  CountryInfo
//
//  Created by Руслан Меланин on 03.07.2025.
//

import SwiftUI

struct CountryList: View {
    
    @StateObject private var viewModel = CountryViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.countries) { country in
                CountryRow(country: country)
            }
            .navigationTitle("Countries")
            .onAppear {
                viewModel.fetchCountries()
            }
        }
    }
}

#Preview {
    CountryList()
}
