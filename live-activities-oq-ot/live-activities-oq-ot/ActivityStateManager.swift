//
//  ActivityStateManager.swift
//  live-activities-oq-ot
//
//  Created by eesaack on 24/08/2023.
//

import Foundation
import ActivityKit

struct ActivityStateManager {
    static var activity: Activity<OrderAttributes>?
    
    static func fetchUpdateContentState(for orderState:OrderState) -> OrderAttributes.ContentState{
        switch orderState{
        case .received:
            return OrderAttributes.ContentState(deliveryBoyState: .finding, pizzaOrderState: .received)
        case .cooking:
            return OrderAttributes.ContentState(deliveryBoyState: .found, pizzaOrderState: .cooking)
        case .dispatched:
            return OrderAttributes.ContentState(deliveryBoyState: .found, pizzaOrderState: .dispatched)
        case .atDoorStep:
            return OrderAttributes.ContentState(deliveryBoyState: .found, pizzaOrderState: .atDoorStep)
        case .delivered:
            return OrderAttributes.ContentState(deliveryBoyState: .found, pizzaOrderState: .delivered)
        }
    }
}
