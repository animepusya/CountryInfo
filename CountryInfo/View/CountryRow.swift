//
//  CountryRow.swift
//  CountryInfo
//
//  Created by Руслан Меланин on 03.07.2025.
//

import SwiftUI

struct CountryRow: View {
    var country: Country

    var body: some View {
        HStack {
            AsyncImage(url: country.flagURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Color.gray.opacity(0.3)
            }
            .frame(width: 40, height: 25)
            .clipShape(RoundedRectangle(cornerRadius: 4))
            .shadow(radius: 2)

            Text(country.name)
                .font(.headline)
        }
    }
}

