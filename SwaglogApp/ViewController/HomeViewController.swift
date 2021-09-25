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
        
        print(timeRecordView.bounds)
        
        let circleTimeRecordView = CircleTimeRecordView(frame: timeRecordView.bounds)
        timeRecordView.addSubview(circleTimeRecordView)

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
