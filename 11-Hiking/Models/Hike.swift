//
//  Hike.swift
//  11-Hiking
//
//  Created by Diego Salazar Arp on 11-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation
import SwiftUI


struct Hike: Identifiable {
    
    let id = UUID()
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike]{
        return [
            Hike(name: "Grey Glacier", imageURL: "GG", miles: 130),
            Hike(name: "Glacier el Morado", imageURL: "GEM", miles: 98),
            Hike(name: "Valle de la Luna", imageURL: "VL", miles: 234)

        ]
    }
}
