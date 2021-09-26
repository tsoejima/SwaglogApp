//
//  HomeViewController.swift
//  SwaglogApp
//
//  Created by 副島拓哉 on 2021/09/25.
//

import UIKit
import Lottie

final class HomeViewController: UIViewController {
    
    @IBOutlet weak var topTitleView: UIView!
    @IBOutlet weak private var ContentView: UIView!
    @IBOutlet weak private var timeRecordView: UIView!
    @IBOutlet weak private var recordIndicatorView: UIView!
    @IBOutlet weak private var recordIndicatorAnimationView: UIView!
    @IBOutlet weak var buttonBackgroundView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSetting()
        let buttonGradient = ButtonGradient()
        buttonGradient.startButtonBackgroundSetting(view: buttonBackgroundView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //ここで呼ばないと座標がずれる
        let circleTimeRecordView = CircleTimeRecordView(frame: timeRecordView.bounds)
        timeRecordView.addSubview(circleTimeRecordView)
        
        let recorIndicatorAnimation = RecordIndicatorAnimaton()
        recorIndicatorAnimation.startRecordIndicatorAnimation(indicatorView: recordIndicatorAnimationView)
    }
    
    func heightSetting() {
        
        let FixedViewsHeight = 648
        let viewsHeight:CGFloat = CGFloat(FixedViewsHeight + (60 * 4))
        ContentView.translatesAutoresizingMaskIntoConstraints = false
        if viewsHeight <= self.view.bounds.size.height {
            ContentView.heightAnchor.constraint(equalToConstant: self.view.bounds.size.height).isActive = true
        } else {
            ContentView.heightAnchor.constraint(equalToConstant: viewsHeight).isActive = true
            topTitleView.translatesAutoresizingMaskIntoConstraints = false
            topTitleView.topAnchor.constraint(equalTo: ContentView.topAnchor, constant: -60).isActive = true
        }
        ContentView.layoutIfNeeded()
    }
}
