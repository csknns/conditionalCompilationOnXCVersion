//
//  ViewController.swift
//  conditionalCompilationOnXCVersion
//
//  Created by Christos Koninis on 03/09/2018.
//  Copyright © 2018 Christos Koninis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        #if XCODE_VERSION_0900
        print("compiles only on Xcode version 9")
        #elseif XCODE_VERSION_1000
        print("compiles only on Xcode version 10")
        #endif
    }

    func test() {
        let activity = NSUserActivity(activityType: "com.activtiy.type")

        activity.title = "Hello World"
        activity.isEligibleForSearch = true
        activity.isEligibleForHandoff = false

        #if XCODE_VERSION_1000
        if #available(iOS 12.0, *) {
            activity.isEligibleForPrediction = true
            activity.suggestedInvocationPhrase = "Say something"
        }
        #endif

        print(activity)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

