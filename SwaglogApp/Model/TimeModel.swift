//
//  TimeModel.swift
//  SwaglogApp
//
//  Created by 副島拓哉 on 2021/09/27.
//

import Foundation

class TimeModel {
    let date = Date()
    let nowHour = DateFormatter()
    
    func nowtime() -> Int {
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let seconds = calendar.component(.second, from: date)
        
        let hourSeconds = hour * 3600
        let minutesSeconds = minutes * 60
        
        let nowTimeSeconds = hourSeconds + minutesSeconds + seconds
        return nowTimeSeconds
    }
}
