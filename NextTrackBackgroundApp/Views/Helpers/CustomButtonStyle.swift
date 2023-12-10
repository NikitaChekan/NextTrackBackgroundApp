//
//  CustomWithoutBreakButtonStyle.swift
//  NextTrackBackgroundApp
//
//  Created by jopootrivatel on 08.12.2023.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    
    @Binding var isPressed: Bool
    @State private var isCircleAndScalePressed = false
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(
                Circle()
                    .fill(isCircleAndScalePressed ? Color.white : Color.clear)
                    .frame(width: 100)
                    .scaleEffect(isCircleAndScalePressed ? 0.86 : 1)
            )
            .scaleEffect(isCircleAndScalePressed ? 0.86 : 1)
            .onTapGesture {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0)) {
                    isCircleAndScalePressed = true
                    isPressed = true
                }
            completion: {
                withAnimation {
                    isCircleAndScalePressed = false
                }
            }
        }
    }
}
