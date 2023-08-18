//
//  widgets_live_activity.swift
//  widgets-live-activity
//
//  Created by eesaack on 18/08/2023.
//

import ActivityKit
import WidgetKit
import SwiftUI
import Intents

struct TimerActivity: View {
    let context: ActivityViewContext<TimerActivity>
    
    var body: some View {
        VStack
    }
}

@main
struct widgets_live_activity: Widget {
    let kind: String = "widgets_live_activity"

    var body: some WidgetConfiguration {
        ActivityConfiguration(attributesType: TimerAttributes.self) { context in
            
        }
    }
}
