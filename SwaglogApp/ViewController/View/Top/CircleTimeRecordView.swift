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
                                      startAngle: CGFloat(Double.pi) * 2 * 270 / 360.0,
                                      endAngle: CGFloat(Double.pi) * 2 * 180 / 360.0,
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
        
        let timeModel = TimeModel()
        let nowTime = timeModel.nowtime()
        let nowTimeAngle: CGFloat = CGFloat((nowTime / 360))
        
        let nowTimeLayer = CAShapeLayer()
        let nowTimeradius = (rect.size.width / 5) + 60.0
        let nowTimelineWidth: CGFloat = 10.0

        let nowTimePath = UIBezierPath(arcCenter: CGPoint(x: rect.midX, y: rect.midY - 20),
                                      radius: nowTimeradius,
                                       startAngle: CGFloat(Double.pi) * 2 * -90.0 / 360.0,
                                       endAngle: CGFloat(Double.pi) * 2 * nowTimeAngle / 360.0,
                                      clockwise: true)
        nowTimeLayer.frame = rect
        nowTimeLayer.path = nowTimePath.cgPath
        nowTimeLayer.lineWidth = nowTimelineWidth
        nowTimeLayer.fillColor = UIColor.clear.cgColor
        nowTimeLayer.strokeColor = UIColor.red.cgColor
        nowTimeLayer.lineCap = .round
      
        let nowTimegradientLayer = CAGradientLayer()
        nowTimegradientLayer.frame = rect
        nowTimegradientLayer.colors = [
        UIColor(red: 1.000, green: 0.623, blue:0.623, alpha: 1.000).cgColor,
        UIColor(red: 1.000, green: 0.827, blue:0.623, alpha: 1.000).cgColor
        ]
        nowTimegradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        nowTimegradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        self.layer.addSublayer(nowTimegradientLayer)

        nowTimegradientLayer.mask = nowTimeLayer
        
    }
}
