//
//  MarineBioViewController.swift
//  HackUCSC2015
//
//  Created by Arjun Gopisetty on 1/10/15.
//  Copyright (c) 2015 HackUCSC2015Team. All rights reserved.
//

import UIKit


class MarineBioViewController: ResponsiveTextFieldViewController, UIPickerViewDelegate {
    
    
    @IBOutlet var schoolGroupLabel: UILabel!
    var GroupName = String()
    var SchoolName = String()

    //water
    @IBOutlet var TEMP: UITextField!
    @IBOutlet var VISIB: UITextField!
    @IBOutlet var DEPTH: UITextField!
    @IBOutlet var SALIN: UITextField!
    @IBOutlet var PLANKSPEC: UITextField!
    @IBOutlet var TempLabel: UILabel!
    @IBOutlet var VisLabel: UILabel!
    @IBOutlet var DepthLabel: UILabel!
    @IBOutlet var SalLabel: UILabel!
    
    // water color options
    @IBOutlet var WCLabel: UILabel!
    @IBOutlet var BROWN: UIButton!
    @IBOutlet var BLUE: UIButton!
    @IBOutlet var RED: UIButton!
    @IBOutlet var GREEN: UIButton!
    @IBOutlet var YELLGREEN: UIButton!
    @IBOutlet var BLUGREEN: UIButton!

    // plankton descriptions
    @IBOutlet var PSNLabel: UILabel!
    @IBOutlet var MZP: UIButton!
    @IBOutlet var MPP: UIButton!
    @IBOutlet var AHH: UIButton!
    @IBOutlet var planktonSelection: UILabel!
    
    @IBOutlet var colorSelection: UILabel!
    
    @IBOutlet var PlankSLabel: UILabel!
    
    //Buttons
    @IBOutlet var WPButton: UIButton!
    @IBOutlet var WCButton: UIButton!
    @IBOutlet var PSNButton: UIButton!
    @IBOutlet var PSButton: UIButton!
    @IBOutlet var Done: UIButton!
    
    
    // COLORS
    @IBAction func brownChosen(sender: UIButton) {
        colorSelection.text = "brown"
    }
    @IBAction func blueChosen(sender: UIButton) {
        colorSelection.text = "blue"
    }
    @IBAction func redChosen(sender: UIButton) {
        colorSelection.text = "red"
    }
    @IBAction func greenChosen(sender: UIButton) {
        colorSelection.text = "green"
    }
    @IBAction func yelGreenChosen(sender: UIButton) {
        colorSelection.text = "yellow-green"
    }
    @IBAction func blueGreenChosen(sender: UIButton) {
        colorSelection.text = "blue-green"
    }

    @IBAction func MZPChosen(sender: UIButton) {
        planktonSelection.text = "mostly zooplankton"
    }
    
    @IBAction func MPPChosen(sender: UIButton) {
        planktonSelection.text = "mostly phytoplankton"
    }
    
    @IBAction func AHHChosen(sender: UIButton) {
        planktonSelection.text = "about half and half"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        schoolGroupLabel.text = "School: " + SchoolName + "  Group: " + GroupName
        WPButton.layer.borderWidth = 1
        WCButton.layer.borderWidth = 1
        PSNButton.layer.borderWidth = 1
        PSButton.layer.borderWidth = 1
        hidePSN(true)
        hideWaterCol(true)
        hidePS(true)
        Done.hidden = true
        // Do any additional setup after loading
		
		WPButton.backgroundColor = UIColor.lightGrayColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func WPPressed(sender: UIButton) {
        hideWaterCol(true)
        hidePSN(true)
        hidePS(true)
        hideWaterQ(false)
        
        if(!Done.hidden){
            Done.hidden = true
        }

		WPButton.backgroundColor = UIColor.lightGrayColor()
		WCButton.backgroundColor = UIColor.clearColor()
		PSNButton.backgroundColor = UIColor.clearColor()
		PSButton.backgroundColor = UIColor.clearColor()
	}
	
	@IBAction func WCPressed(sender: UIButton) {
		hidePSN(true)
		hidePS(true)
		hideWaterQ(true)
		hideWaterCol(false)
        
        if(!Done.hidden){
            Done.hidden = true
        }
		
		WPButton.backgroundColor = UIColor.clearColor()
		WCButton.backgroundColor = UIColor.lightGrayColor()
		PSNButton.backgroundColor = UIColor.clearColor()
		PSButton.backgroundColor = UIColor.clearColor()
	}
   @IBOutlet weak var saveDataDict: UIButton!
   @IBAction func saveDataDict(sender: AnyObject) {
      self.gatherAllData()
   }
	
	@IBAction func PSNPressed(sender: UIButton) {
		hideWaterCol(true)
		hidePS(true)
		hideWaterQ(true)
		hidePSN(false)
        
        if(!Done.hidden){
            Done.hidden = true
        }
		
		WPButton.backgroundColor = UIColor.clearColor()
		WCButton.backgroundColor = UIColor.clearColor()
		PSNButton.backgroundColor = UIColor.lightGrayColor()
		PSButton.backgroundColor = UIColor.clearColor()
	}
	
	@IBAction func PSPressed(sender: UIButton) {
		hideWaterCol(true)
		hidePSN(true)
		hideWaterQ(true)
		hidePS(false)
		Done.hidden = false
		WPButton.backgroundColor = UIColor.clearColor()
		WCButton.backgroundColor = UIColor.clearColor()
		PSNButton.backgroundColor = UIColor.clearColor()
		PSButton.backgroundColor = UIColor.lightGrayColor()
	}
	
	func hidePS(sender:Bool){
		if(sender){
			PlankSLabel.hidden = true
			PLANKSPEC.hidden = true
		}else{
			PlankSLabel.hidden = false
			PLANKSPEC.hidden = false
        }
		
    }
	
    func hideWaterQ(sender:Bool){
        if(sender){
            TEMP.hidden = true
            VISIB.hidden = true
            DEPTH.hidden = true
            SALIN.hidden = true
            TempLabel.hidden = true
            VisLabel.hidden = true
            DepthLabel.hidden = true
            SalLabel.hidden = true
        }else{
            TEMP.hidden = false
            VISIB.hidden = false
            DEPTH.hidden = false
            SALIN.hidden = false
            TempLabel.hidden = false
            VisLabel.hidden = false
            DepthLabel.hidden = false
            SalLabel.hidden = false
        }
    }
    
    func hideWaterCol(sender:Bool){
        if(sender){
            WCLabel.hidden = true
            BROWN.hidden = true
            BLUE.hidden = true
            RED.hidden = true
            GREEN.hidden = true
            YELLGREEN.hidden = true
            BLUGREEN.hidden = true
            colorSelection.hidden = true
        }else{
            WCLabel.hidden = false
            BROWN.hidden = false
            BLUE.hidden = false
            RED.hidden = false
            GREEN.hidden = false
            YELLGREEN.hidden = false
            BLUGREEN.hidden = false
            colorSelection.hidden = false
        }
    }
    
    func hidePSN(sender:Bool){
        if(sender){
            PSNLabel.hidden = true
            MZP.hidden = true
            MPP.hidden = true
            AHH.hidden = true
            planktonSelection.hidden = true
        }else{
            PSNLabel.hidden = false
            MZP.hidden = false
            MPP.hidden = false
            AHH.hidden = false
            planktonSelection.hidden = false
        }
    }
    
    func gatherAllData(){
        var aDictionary = [String : String]()
        var bDictionary = [String : String]()
        var cDictionary = [String : String]()
        var dDictionary = [String : String]()

        aDictionary["bsurface_temperature"] = TEMP.text
        aDictionary["bseawater_visibility"] = VISIB.text
        aDictionary["bseawater_depth"] = DEPTH.text
        aDictionary["bseawater_salinity"] = SALIN.text
        aDictionary["bplankton_sample"] = planktonSelection.text
        aDictionary["bplankton_notes"] = PLANKSPEC.text
        aDictionary["bseawater_color"] = colorSelection.text
      
        
        aDictionary["bmeasurement_time"] = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .NoStyle, timeStyle: .ShortStyle)
        
        aDictionary["bmeasurement_date"] = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .ShortStyle, timeStyle: .NoStyle)
        
        bDictionary["type"] = "biology"
        cDictionary["group"] = GroupName
        dDictionary["id"] = (sharedData().objectForKey("school_id") as String)
        sharedData().setObject(aDictionary, forKey: "data")
        sharedData().addEntriesFromDictionary(bDictionary)
        sharedData().addEntriesFromDictionary(cDictionary)
        sharedData().addEntriesFromDictionary(dDictionary)
        //var myNewDictArray: [[String:String]] = []
        //myNewDictArray.append(aDictionary)
        //sharedData().setObject(myNewDictArray, forKey: "biology")
        
        //bData().setObject(sharedData(), forKey: "group_data")
        //cData().setObject(bData(), forKey: "data")
    }

    @IBAction func saveData(sender: AnyObject) {
        gatherAllData()
        println(sharedData())
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestVC: SubmitDataViewController = segue.destinationViewController as SubmitDataViewController
        DestVC.groupName = GroupName
    }

}
