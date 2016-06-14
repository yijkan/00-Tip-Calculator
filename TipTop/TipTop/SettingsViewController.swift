//
//  SettingsViewController.swift
//  TipTop
//
//  Created by Yijin Kang on 6/14/16.
//  Copyright © 2016 Yijin Kang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let defaults = NSUserDefaults.standardUserDefaults()
    @IBOutlet weak var percentSegCon: UISegmentedControl!
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        percentSegCon.selectedSegmentIndex = defaults.integerForKey("default_perc")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeDefaultPercent(sender: AnyObject) {
        defaults.setInteger(percentSegCon.selectedSegmentIndex, forKey: "default_perc")
        defaults.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
