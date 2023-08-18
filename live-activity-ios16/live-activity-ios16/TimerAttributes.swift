//
//  TimerAttributes.swift
//  live-activity-ios16
//
//  Created by eesaack on 18/08/2023.
//

import ActivityKit
import SwiftUI

struct TimerAttributes: ActivityAttributes {
    public typealias TimerStatus: ContentState
    
    public struct ContentState: Codable, Hashable {
        var endTime: Date
    }
    
    var timerName: String
}
