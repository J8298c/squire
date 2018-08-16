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
    var ref: DatabaseReference!
    var workouts = [Workout]() {
        didSet {
          print(workouts, "the workouts")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Workouts"
        
        ref = Database.database().reference()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        ref.child("workouts").observe(.value) { snapshot in
            var workouts = [Workout]()

            for workoutsSnapshot in snapshot.children {
                let workout = Workout(snapshot: workoutsSnapshot as! DataSnapshot)
                print(workout, "the workout")
                workouts.append(workout)
            }
            
            self.workouts = workouts
            
        }
    }

    

}
