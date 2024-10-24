//
//  MeansOfTransportView.swift
//  TareaNavegacion
//
//  Created by Josué Arreola on 23/10/24.
//

import SwiftUI

struct MeansOfTransportView: View {
   
    var name: String
    var icon: String
    @Binding var pressed : Bool
    
    var body: some View {
        
        Label(name, systemImage: icon)
            .rotationEffect(Angle(degrees: pressed ? 180 : 0))
            .modifier(CardViewModifier())
    }
}

#Preview {
    MeansOfTransportView(name: "Medio de transporte", icon: "car", pressed: .constant(false))
}
