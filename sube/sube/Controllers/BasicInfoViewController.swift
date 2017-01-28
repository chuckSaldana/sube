//
//  BasicInfoViewController.swift
//  sube
//
//  Created by Carlos Saldana on 1/28/17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

class BasicInfoViewController: UIViewController/*, UIPickerViewDataSource, UIPickerViewDelegate */{

    @IBOutlet weak var picker: UIPickerView!
    var loadStates = false
    var loadCities = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        picker?.hidden = true
    }

    @IBAction func selectState(sender: AnyObject) {
        self.picker?.hidden = false
        self.loadStates = true
        self.loadCities = false
    }
    
    @IBAction func selectCity(sender: AnyObject) {
        self.picker?.hidden = false
        self.loadCities = true
        self.loadStates = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func useCurrentLocation(sender: AnyObject) {
    }
    @IBOutlet weak var `continue`: UIButton!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
   /* func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
    }*/
    
}
