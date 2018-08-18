//
//  MainWorkoutViewController.swift
//  squire
//
//  Created by Julio Mojica on 8/13/18.
//  Copyright © 2018 Julio Mojica. All rights reserved.
//

import UIKit
import FirebaseDatabase

class MainWorkoutViewController: UIViewController {
    var workouts : [Workout] = []
    var ref: DatabaseReference!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Workouts"
        
        self.ref = Database.database().reference()
        
        self.ref.child("workouts").observe(.value) {snapshot in
          var workoutItems: [Workout] = []
            
            for child in snapshot.children {
               if let snapshot = child as? DataSnapshot,
                let workoutItem = Workout(snapshot: snapshot) {
                    workoutItems.append(workoutItem)
                }
                print(workoutItems, "the workout items")
            }
            
            self.workouts = workoutItems
            print(self.workouts, "the workouts")
        
        }
       
    }
    
    
    

    

}
