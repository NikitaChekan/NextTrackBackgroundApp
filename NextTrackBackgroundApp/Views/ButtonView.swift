//
//  WithoutBreakButtonView.swift
//  NextTrackBackgroundApp
//
//  Created by jopootrivatel on 08.12.2023.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var startAnimate = false
    
    var body: some View {
        Button(action: {}) {
            GeometryReader { proxy in
                let width = proxy.size.width / 2
                
                HStack(alignment: .center, spacing: 0) {
                    Image(systemName: "play.fill")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: startAnimate ? width : 0)
                        .opacity(startAnimate ? 1 : 0)
                    
                    Image(systemName: "play.fill")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: width)
                    
                    Image(systemName: "play.fill")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: startAnimate ? 0.5 : width)
                        .opacity(startAnimate ? 0 : 1)
                    
                }
                .frame(maxHeight: .infinity, alignment: .center)
            }
        }
        .buttonStyle(CustomButtonStyle(isPressed: $startAnimate))
//                    .scaleEffect(startAnimate ? 0.86 : 1)
        .foregroundColor(.black)
        .frame(maxWidth: 60)
    }
    
//    private func buttonAction() {
//        if !startAnimate {
//            withAnimation(.spring(response: 0.22, dampingFraction: 0.5, blendDuration: 0)) {
//                startAnimate = true
//            } completion: {
//                startAnimate = false
//            }
//        }
//    }
}

#Preview {
    ButtonView()
}
