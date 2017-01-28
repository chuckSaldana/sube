//
//  BasicInfoViewController.swift
//  sube
//
//  Created by Carlos Saldana on 1/28/17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

class BasicInfoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var cityTxtF: UITextField!
    @IBOutlet weak var stateTxtF: UITextField!
    @IBOutlet weak var picker: UIPickerView!
    var selectedState = 0
    var loadCities = false
    let statesArray = ["CDMX", "Jalisco", "Nuevo Leon"]
    let citiesArray = [["Milpa Alta", "Tláhuac", "Tlalpan"], ["Guadlajara", "Tlaquepaque", "Zapopan"], ["Apodaca", "Escobedo", "Guadalupe"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        picker?.hidden = true
    }

    @IBAction func selectState(sender: AnyObject) {
        self.picker?.hidden = false
        self.loadCities = false
        self.picker.reloadAllComponents()
    }
    
    @IBAction func selectCity(sender: AnyObject) {
        self.picker?.hidden = false
        self.loadCities = true

        self.selectedState = picker.selectedRowInComponent(0)
        self.picker.reloadAllComponents()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func useCurrentLocation(sender: AnyObject) {

    }

         /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.loadCities ? self.citiesArray[selectedState].count : self.statesArray.count
    }


    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.loadCities ? self.citiesArray[selectedState][row] : self.statesArray[row]
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if self.loadCities {
            self.cityTxtF.text = self.citiesArray[selectedState][row]
        }
        else {
            self.stateTxtF.text = self.statesArray[row]
        }
    }
}
