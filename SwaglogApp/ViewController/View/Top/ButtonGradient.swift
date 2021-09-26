//
//  ButtonGradient.swift
//  SwaglogApp
//
//  Created by 副島拓哉 on 2021/09/26.
//

import UIKit

class ButtonGradient: UIView {
    func startButtonBackgroundSetting(view: UIView) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
        UIColor(red: 0.623, green: 1.000, blue:0.933, alpha: 1.000).cgColor,
        UIColor(red: 0.623, green: 1.000, blue:0.776, alpha: 1.000).cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.cornerRadius = view.bounds.size.height / 2
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
