//
//  HomeViewController.swift
//  SwaglogApp
//
//  Created by 副島拓哉 on 2021/09/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var timeRecordView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //ここで呼ばないと座標がずれる
        let circleTimeRecordView = CircleTimeRecordView(frame: timeRecordView.bounds)
        timeRecordView.addSubview(circleTimeRecordView)
    }
}
