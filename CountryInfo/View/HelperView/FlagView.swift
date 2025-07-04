//
//  FlagView.swift
//  CountryInfo
//
//  Created by Руслан Меланин on 03.07.2025.
//

import SwiftUI

struct FlagView: View {
    var body: some View {
        Image("russia")
            .resizable()
            .frame(width: 150, height: 95)
            .cornerRadius(7)
            .shadow(radius: 5)
    }
}

#Preview {
    FlagView()
}
