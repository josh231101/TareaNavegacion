//
//  ContentView.swift
//  TareaNavegacion
//
//  Created by Josué Arreola on 23/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var pressed : Bool = false
    @State var place : String = ""
    
    //Vehicle options
    var trainOptions = ["Tren continental","Tren Maya", "Metro Monterrey", ]
    var busOptions = ["Vencedor", "ADO", "Omnibus", "ETN"]
    var planeOptions = ["VivaAerobus","AeroMexico", "Interjet"]
    var ferryOptions = ["Baja Ferries", "Logos Hope", "Baja Ferry"]
    
    var body: some View {
        NavigationView {
            VStack{
                
                
                TextField("¿A donde deseas viajar?", text: $place).padding()
                Text("Viajaremos a \(place)")
                
                ScrollView(.horizontal){
                    HStack(){
                        NavigationLink(destination: TransportsView(transportName: "Tren", options: trainOptions)) {
                            MeansOfTransportView(name: "Tren", icon: "tram", pressed: $pressed)
                        }
                        NavigationLink(destination: TransportsView(transportName: "Bus", options: busOptions)){
                            MeansOfTransportView(name: "Bus", icon: "bus", pressed: $pressed)

                        }
                        NavigationLink(destination: TransportsView(transportName: "Avión", options: planeOptions)) {
                            MeansOfTransportView(name: "Avión", icon: "airplane", pressed: $pressed)
                        }
                        NavigationLink(destination: TransportsView(transportName: "Ferry", options: ferryOptions)) {
                            MeansOfTransportView(name: "Ferry", icon: "ferry.fill", pressed: $pressed)
                        }                             
                    }
                }
                
                ScrollView(){
                    TrainCardView(name: "Tren Bala Kodama", iconColor: Color.yellow)
                    TrainCardView(name: "Tren Bala Nozomi", iconColor: Color.green)
                    TrainCardView(name: "Tren Bala Sakura", iconColor: Color.pink)
                    TrainCardView(name: "Tren Bala Hikari", iconColor: Color.blue)
                    TrainCardView(name: "Tren Bala Hayabusa", iconColor: Color.red)
                    TrainCardView(name: "JR Yamanote", iconColor: Color.purple)
                    TrainCardView(name: "JR Chuou", iconColor: Color.orange)
                    TrainCardView(name: "Sanyou Line", iconColor: Color.cyan)
                    TrainCardView(name: "Super Line Takamatsu", iconColor: Color.teal)
                    TrainCardView(name: "FujiSubaru Line", iconColor: Color.gray)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
