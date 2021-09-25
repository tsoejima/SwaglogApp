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
            //self.backgroundColor = UIColor.clear;
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func draw(_ rect: CGRect) {
            let arcLayer = CAShapeLayer()
            let radius = rect.size.width / 5
            let lineWidth: CGFloat = rect.size.width / 4.5
            
            print(CGPoint(x: rect.midX, y: rect.midY))

            let arcPath = UIBezierPath(arcCenter: CGPoint(x: rect.midX, y: rect.midY - 20 ),
                                          radius: radius,
                                          startAngle: CGFloat(Double.pi) * 2 * 0 / 360.0,
                                          endAngle: CGFloat(Double.pi) * 2 * 360 / 360.0,
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
            
            //↓テスト
            let arcLayer2 = CAShapeLayer()
            let radius2 = (rect.size.width / 5) + 60.0
            let lineWidth2: CGFloat = 10.0

            let arcPath2 = UIBezierPath(arcCenter: CGPoint(x: rect.midX, y: rect.midY - 20),
                                          radius: radius2,
                                          startAngle: CGFloat(Double.pi) * 2 * 270 / 360.0,
                                          endAngle: CGFloat(Double.pi) * 2 * 200 / 360.0,
                                          clockwise: true)
            arcLayer2.frame = rect
            arcLayer2.path = arcPath2.cgPath
            arcLayer2.lineWidth = lineWidth2
            arcLayer2.fillColor = UIColor.clear.cgColor
            arcLayer2.strokeColor = UIColor.red.cgColor
            arcLayer2.lineCap = .round
          
            let gradientLayer2 = CAGradientLayer()
            gradientLayer2.frame = rect
            gradientLayer2.colors = [
            UIColor(red: 1.000, green: 0.623, blue:0.623, alpha: 1.000).cgColor,
            UIColor(red: 1.000, green: 0.827, blue:0.623, alpha: 1.000).cgColor
            ]
            gradientLayer2.startPoint = CGPoint(x: 0.0, y: 1.0)
            gradientLayer2.endPoint = CGPoint(x: 0.0, y: 0.0)
            self.layer.addSublayer(gradientLayer2)

            gradientLayer2.mask = arcLayer2
            
        }
}
