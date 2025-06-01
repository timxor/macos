//
//  macos_multiplatform_app_templateApp.swift
//  macos-multiplatform-app-template
//
//  Created by Tim Siwula on 6/1/25.
//

import SwiftUI

@main
struct macos_multiplatform_app_templateApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
