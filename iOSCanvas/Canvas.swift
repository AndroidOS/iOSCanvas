//
//  Canvas.swift
//  iOSCanvas
//
//  Created by Manuel Carvalho on 14/1/20.
//  Copyright © 2020 Manuel Carvalho. All rights reserved.
//

import Foundation
import UIKit

class Canvas: UIView {
    
    let graphWidth: CGFloat = 0.8  // Graph is 80% of the width of the view
    let amplitude: CGFloat = 0.3   // Amplitude of sine wave is 30% of view height
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let width = rect.width
        let height = rect.height

        let origin = CGPoint(x: width * (1 - graphWidth) / 2, y: height * 0.50)

        let path = UIBezierPath()
        path.move(to: origin)

        for angle in stride(from: 5.0, through: 360.0, by: 5.0) {
            let x = origin.x + CGFloat(angle/360.0) * width * graphWidth
            let y = origin.y - CGFloat(sin(angle/180.0 * Double.pi)) * height * amplitude
            path.addLine(to: CGPoint(x: x, y: y))
        }

        UIColor.blue.setStroke()
        path.stroke()

    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: nil) else {return}
        print(point)
    }
}
