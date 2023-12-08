//
//  ContentView.swift
//  NextTrackBackgroundApp
//
//  Created by jopootrivatel on 08.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            BreakButtonView()
            WithoutBreakButtonView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
