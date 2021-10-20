//
//  landmarksApp.swift
//  landmarks
//
//  Created by Oucema on 20/10/2021.
//

import SwiftUI

@main
struct landmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
