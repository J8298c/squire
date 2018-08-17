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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Workouts"
        let ref = Database.database().reference(withPath: "workouts")
        ref.observe(.value, with: { snapshot in
            print(snapshot.value as Any)
        })
        
       
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
            
        }

    

}
