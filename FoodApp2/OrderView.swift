//
//  OrderView.swift
//  FoodApp2
//
//  Created by Nicolas Lépinay on 08/05/2023.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack{
            List {
                Section {
                    ForEach(order.items) {item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("\(item.price)€")
                        }
                        
                    }
                }
                Section {
                    NavigationLink("Commander") {
                        Text("Finaliser la commande")
                    }
                    
                }
            }
            .navigationTitle("Panier")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
