//
//  CountryDetail.swift
//  CountryInfo
//
//  Created by Руслан Меланин on 03.07.2025.
//

import SwiftUI

struct CountryDetail: View {
    
    @State private var isMapExtended = false
    
    var body: some View {
        VStack(spacing: 0) {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: isMapExtended ? UIScreen.main.bounds.height * 0.85 : 200)
                .animation(.easeInOut(duration: 0.5), value: isMapExtended)
                .onTapGesture {
                    withAnimation {
                        isMapExtended = true
                    }
                }
            VStack() {
                
                if isMapExtended {
                    CollapseButton {
                        withAnimation {
                            isMapExtended = false
                        }
                    }
                }
                HStack {
                    FlagView()
                    Spacer()
                    Text("Russia")
                        .fontWeight(.heavy)
                        .font(.title)
                        .padding(.trailing, 65)
                }
                .padding()
                .offset(y: -30)
                .padding(.bottom, -30)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Capital: Moscow")
                    Text("Area: 17,098,242 km2")
                    Text("Population: 145,102,853")
                    Text("Currency: Russian Ruble (RUB)")
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
        }
        
    }
}

#Preview {
    CountryDetail()
}
