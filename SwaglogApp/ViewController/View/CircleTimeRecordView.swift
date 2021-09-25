//
//  CircleTimeRecordView.swift
//  SwaglogApp
//
//  Created by 副島拓哉 on 2021/09/25.
//

import UIKit

class CircleTimeRecordView: UIView {
    override init(frame: CGRect) {
            super.init(frame: frame);
            self.backgroundColor = UIColor.clear;
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func draw(_ rect: CGRect) {
            let arcLayer = CAShapeLayer()
                   let radius = rect.size.width / 4
                   let lineWidth: CGFloat = 80
            
            print(CGPoint(x: rect.midX, y: rect.midY))

                   let arcPath = UIBezierPath(arcCenter: CGPoint(x: rect.midX, y: rect.midY),
                                          radius: radius,
                                          startAngle: CGFloat(Double.pi) * 2 * 0 / 360.0,
                                          endAngle: CGFloat(Double.pi) * 2 * 360.0 / 360.0,
                                          clockwise: true)
                   arcLayer.frame = rect
                   arcLayer.path = arcPath.cgPath
                   arcLayer.lineWidth = lineWidth
                   arcLayer.fillColor = UIColor.clear.cgColor
                   arcLayer.strokeColor = UIColor.red.cgColor

                   let gradientLayer = CAGradientLayer()
                   gradientLayer.frame = rect
                   gradientLayer.colors = [
                    UIColor(red: 0.623, green: 1.000, blue:0.933, alpha: 1.000).cgColor,
                    UIColor(red: 0.623, green: 1.000, blue:0.776, alpha: 1.000).cgColor
                   ]
                   gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
                   gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
                   self.layer.addSublayer(gradientLayer)

                   gradientLayer.mask = arcLayer
            
        }
}
