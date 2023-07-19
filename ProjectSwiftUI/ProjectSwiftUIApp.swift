//
//  ProjectSwiftUIApp.swift
//  ProjectSwiftUI
//
//  Created by Rajesab N Y on 19/07/23.
//

import SwiftUI

@main
struct ProjectSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
