//
//  Workout.swift
//  squire
//
//  Created by Julio Mojica on 8/15/18.
//  Copyright © 2018 Julio Mojica. All rights reserved.
//

import Foundation
import FirebaseDatabase

struct Workout {
    let bodyPart: String
    let day: Int
    let equipment: String
    let name: String
    let sets: Int
    let userLevel: String
    
    
    init(bodyPart: String, day: Int, equipment: String, name: String, sets: Int, userLevel: String ){
        self.bodyPart = bodyPart
        self.day = day
        self.equipment = equipment
        self.name = name
        self.sets = sets
        self.userLevel = userLevel
    }
    
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        bodyPart = snapshotValue["bodyPart"] as! String
        day = snapshotValue["day"] as! Int
        equipment = snapshotValue["equipment"] as! String
        name = snapshotValue["name"] as! String
        sets = snapshotValue["sets"] as! Int
        userLevel = snapshotValue["userLevel"] as! String
    }
    
    
    func toAnyObject() -> Any {
        return [
            "bodyPart": bodyPart,
            "day": day,
            "equipment": equipment,
            "name": name,
            "sets": sets,
            "userLevel": userLevel
        ]
    }
}
