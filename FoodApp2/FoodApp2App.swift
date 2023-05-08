//
//  FoodApp2App.swift
//  FoodApp2
//
//  Created by Nicolas Lépinay on 08/05/2023.
//

import SwiftUI

@main
struct FoodApp2App: App {
    
    @StateObject var order = Order()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
