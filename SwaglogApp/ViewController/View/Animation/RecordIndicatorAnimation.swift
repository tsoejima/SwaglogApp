//
//  RecordIndicatorAnimation.swift
//  SwaglogApp
//
//  Created by 副島拓哉 on 2021/09/26.
//

import Foundation
import UIKit
import Lottie

class RecordIndicatorAnimaton: UIView {
    
    func startRecordIndicatorAnimation(indicatorView: UIView) {
        
        var animationView = AnimationView()
        animationView = AnimationView(name: "LoadingTest") //ここに先ほどダウンロードしたファイル名を記述（拡張子は必要なし）
            //アニメーションの位置指定（画面中央）
        animationView.frame = CGRect(x: 0, y: 0, width: indicatorView.frame.size.width, height: indicatorView.frame.size.height)

        //アニメーションのアスペクト比を指定＆ループで開始
        animationView.contentMode = .scaleAspectFill
        animationView.loopMode = .loop
        animationView.play()

        //ViewControllerに配置
        indicatorView.addSubview(animationView)
    }
}
