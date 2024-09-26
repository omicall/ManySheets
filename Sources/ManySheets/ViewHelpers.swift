//
//  ViewHelpers.swift
//  ManySheets
//
//  Created by Glenn Brannelly on 9/16/21.
//  Copyright © 2021 Glenn Brannelly. All rights reserved.
//

import Foundation
import SwiftUI

// MARK: - RoundedCorners
@available(iOS 15, *)
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
@available(iOS 15, *)
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

// MARK: - Blur effect view
@available(iOS 15, *)
internal struct VisualEffectView: UIViewRepresentable {
    
    internal let effect: UIVisualEffect
    
    internal func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: effect)
    }
    
    internal func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}
