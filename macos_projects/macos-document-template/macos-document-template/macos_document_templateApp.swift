//
//  macos_document_templateApp.swift
//  macos-document-template
//
//  Created by Tim Siwula on 6/1/25.
//

import SwiftUI
import SwiftData
import UniformTypeIdentifiers

@main
struct macos_document_templateApp: App {
    var body: some Scene {
        DocumentGroup(editing: .itemDocument, migrationPlan: macos_document_templateMigrationPlan.self) {
            ContentView()
        }
    }
}

extension UTType {
    static var itemDocument: UTType {
        UTType(importedAs: "com.example.item-document")
    }
}

struct macos_document_templateMigrationPlan: SchemaMigrationPlan {
    static var schemas: [VersionedSchema.Type] = [
        macos_document_templateVersionedSchema.self,
    ]

    static var stages: [MigrationStage] = [
        // Stages of migration between VersionedSchema, if required.
    ]
}

struct macos_document_templateVersionedSchema: VersionedSchema {
    static var versionIdentifier = Schema.Version(1, 0, 0)

    static var models: [any PersistentModel.Type] = [
        Item.self,
    ]
}
