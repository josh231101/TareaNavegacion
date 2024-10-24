//
//  TransportsView.swift
//  TareaNavegacion
//
//  Created by Josué Arreola on 23/10/24.
//

import SwiftUI

struct TransportsView: View {
    let transportName: String
    let options: [String]
    var body: some View {
        VStack {
            Text("Disponibles para \(transportName):")
                .bold()
                .padding()
                .font(.system(size: 50))
            ForEach(options, id: \.self) {
                option in
                Text(option)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding()
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            }
        }.padding()
    }
}

#Preview {
    TransportsView(transportName: "Avión", options: ["Viva aerobus", "ADO", "Interjet"])
}
