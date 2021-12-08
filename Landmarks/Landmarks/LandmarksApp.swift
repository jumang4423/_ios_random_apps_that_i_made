//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by jumango pussu on 2021/12/05.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

