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
        .foregroundColor(.black)
        .frame(maxWidth: 60)
    }
}

#Preview {
    ButtonView()
}
