//
//  SettingsView.swift
//  RecipeSaver
//
//  Created by Riya Zingade on 2/22/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v1.0.0")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    SettingsView()
}
