//
//  testShopeApp.swift
//  testShope
//
//  Created by Temur on 24/09/2021.
//

import SwiftUI

@main
struct testShopeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
