//
//  SetRouteVC.swift
//  sube
//
//  Created by Carlos Saldana on 1/28/17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

class SetRouteVC: UIViewController {

    @IBOutlet weak var departureTxtF: UITextField!
    @IBOutlet weak var arrivalTxtF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func useCurrentLocation(sender: AnyObject) {
        
    }

    @IBAction func selectDestinationInMap(sender: AnyObject) {

    }

    @IBAction func openFavorites(sender: AnyObject) {

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
