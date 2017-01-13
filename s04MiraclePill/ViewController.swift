//
//  ViewController.swift
//  s04MiraclePill
//
//  Created by bernadette on 1/9/17.
//  Copyright © 2017 Bernadette P. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    // UIPICKER -- DON'T FORGET PROTOCOLS! (Above)
    
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    // So we can change the text on it
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var successImg: UIImageView!
    
    let states = ["Non-U.S.",
                  "Alaska",
                  "Alabama",
                  "Arkansas",
                  "American Samoa",
                  "Arizona",
                  "California",
                  "Colorado",
                  "Connecticut",
                  "District of Columbia",
                  "Delaware",
                  "Florida",
                  "Georgia",
                  "Guam",
                  "Hawaii",
                  "Iowa",
                  "Idaho",
                  "Illinois",
                  "Indiana",
                  "Kansas",
                  "Kentucky",
                  "Louisiana",
                  "Massachusetts",
                  "Maryland",
                  "Maine",
                  "Michigan",
                  "Minnesota",
                  "Missouri",
                  "Mississippi",
                  "Montana",
                  "North Carolina",
                  "North Dakota",
                  "Nebraska",
                  "New Hampshire",
                  "New Jersey",
                  "New Mexico",
                  "Nevada",
                  "New York",
                  "Ohio",
                  "Oklahoma",
                  "Oregon",
                  "Pennsylvania",
                  "Puerto Rico",
                  "Rhode Island",
                  "South Carolina",
                  "South Dakota",
                  "Tennessee",
                  "Texas",
                  "Utah",
                  "Virginia",
                  "Virgin Islands",
                  "Vermont",
                  "Washington",
                  "Wisconsin",
                  "West Virginia",
                  "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.view.backgroundColor = UIColor.purple
        
        statePicker.dataSource = self
        statePicker.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // To open the picker
    @IBAction func stateBtnPressed(_ sender: Any) {
        
        // Show the picker
        statePicker.isHidden = false
        
        for i in 13...16 {
            view.viewWithTag(i)?.isHidden = true
        }
        
    }
    
    @IBAction func buyNowBtn(_ sender: Any) {
        
        for i in 1...18 {
            view.viewWithTag(i)?.isHidden = true
        }
        
        successImg.isHidden = false
    }
    

    // NEXT 3 BELOW -- Implement required functions (for UIPicker protocols)
    // numberOfComponents / numberOfRowsInComponent / titleForRow
    
    // "return 0" for now (at the beginning)
    // Like a column
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // "return 0" for now
    // Based on the # of US states
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    // "return "" <empty string>" for now
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    // ~~ For the picker (didSelectRow)
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        // What title --> The name of the selected state
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        
        // Hide the picker when state is selected
        statePicker.isHidden = true
        
        for i in 13...16 {
            view.viewWithTag(i)?.isHidden = false
        }
        
    }
}

