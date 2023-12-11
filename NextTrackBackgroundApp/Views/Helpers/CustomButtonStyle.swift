//
//  CustomWithoutBreakButtonStyle.swift
//  NextTrackBackgroundApp
//
//  Created by jopootrivatel on 08.12.2023.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    
    @State private var isProcessingPressBackground = false
    
    let duration: TimeInterval = 0.22
    let scale: CGFloat = 0.86
    
    func makeBody(configuration: Configuration) -> some View {
        
        ZStack {
            Circle()
                .foregroundColor(.secondary)
                .opacity(isProcessingPressBackground ? 0.3 : 0)
            configuration.label
                .padding(12)
        }
        .scaleEffect(isProcessingPressBackground ? scale : 1)
        .animation(.easeOut(duration: duration), value: configuration.isPressed)
        .onChange(of: configuration.isPressed) { newValue in
            if newValue {
                withAnimation(.easeOut(duration: duration)) {
                    isProcessingPressBackground = true
                }
            } else {
                DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
                    withAnimation(.easeOut(duration: duration)) {
                        isProcessingPressBackground = false
                    }
                }
            }
        }
    }
}
