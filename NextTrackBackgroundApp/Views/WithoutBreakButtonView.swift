//
//  WithoutBreakButtonView.swift
//  NextTrackBackgroundApp
//
//  Created by jopootrivatel on 08.12.2023.
//

import SwiftUI

struct WithoutBreakButtonView: View {
    
    @State private var startAnimate = false
    
    var body: some View {
        VStack() {
            Button(action: buttonAction) {
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
            .foregroundColor(.black)
            .frame(maxWidth: 63)
            
            Text("Не прерывается. Анимация идет до конца.")
                .foregroundColor(.green)
                .frame(width: 150)
        }
    }
    
    private func buttonAction() {
        if !startAnimate {
            withAnimation(.interpolatingSpring(stiffness: 170, damping: 15)) {
                startAnimate = true
            } completion: {
                startAnimate = false
            }
        }
    }
}

#Preview {
    WithoutBreakButtonView()
}
