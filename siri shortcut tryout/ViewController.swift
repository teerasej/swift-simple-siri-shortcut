//
//  ViewController.swift
//  siri shortcut tryout
//
//  Created by Teerasej Jiraphatchandej on 8/22/18.
//  Copyright © 2018 Teerasej Jiraphatchandej. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    public func makeViewRed() {
        view.backgroundColor = .red
    }
    
    @IBAction func buttonAction(sender: UIButton){
        let activity = NSUserActivity(activityType: "th.in.nextflow.siri-shortcut-tryout.makeRed")
        activity.title = "Make View Red"
        activity.userInfo = ["color": "red"]
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
//        activity.persistentIdentifier = NSUserActivityPersistentIdentifie
        view.userActivity = activity;
        activity.becomeCurrent();
        
        makeViewRed();
    }


}

