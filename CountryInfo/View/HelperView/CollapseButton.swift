//
//  CollapseButton.swift
//  CountryInfo
//
//  Created by Руслан Меланин on 03.07.2025.
//

import SwiftUI

import SwiftUI

struct CollapseButton: View {
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.compact.up")
                .font(.system(size: 24, weight: .bold))
                .padding()
                .background(Color.white.opacity(0.8))
                .clipShape(Circle())
                .shadow(radius: 4)
                .padding()
        }
    }
}

#Preview {
    CollapseButton { print("Tapped") }
}
