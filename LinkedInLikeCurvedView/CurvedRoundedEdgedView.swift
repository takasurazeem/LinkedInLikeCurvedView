//
//  CurvedRoundedEdgedView.swift
//  LinkedInLikeCurvedView
//
//  Created by Takasur Azeem on 24/03/2021.
//

import UIKit


@IBDesignable
class CurvedRoundedEdgedView: UIView {
    
    @IBInspectable var fillColor: UIColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        clipsToBounds = false
        let path = UIBezierPath()
        path.move(to: CGPoint(x: bounds.minX, y:bounds.minY))
        path.addLine(to: CGPoint(x: bounds.minX, y:bounds.midY * 1.7))
        path.addQuadCurve(to: CGPoint(x: bounds.maxX, y: bounds.midY * 1.7), controlPoint: CGPoint(x: bounds.midX, y: bounds.midY * 2.3))
        path.addLine(to: CGPoint(x: bounds.maxX, y:bounds.minY))
        fillColor.setFill()
        path.fill()
        path.close()
        
    }
}
