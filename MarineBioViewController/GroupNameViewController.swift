//
//  GroupNameViewController.swift
//  MarineBioViewController
//
//  Created by Christopher Hsiao on 2/10/15.
//  Copyright (c) 2015 Chips&Tea. All rights reserved.
//

import UIKit

class GroupNameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet var group_name: UIPickerView!//this is for the group name input.
    //will add to dicts as soon as it is clear where it needs to go.
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
