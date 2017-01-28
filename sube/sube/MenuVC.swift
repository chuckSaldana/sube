//
//  Menu.swift
//  sube
//
//  Created by Carlos Saldana on 1/28/17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

class MenuVC: BaseController {

    @IBAction func cancel(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    @IBAction func tomarAutobus(sender: AnyObject) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let setRouteVC = storyboard.instantiateViewControllerWithIdentifier("SetRouteVC") as? SetRouteVC
        self.navigationController?.pushViewController(setRouteVC!, animated: true)
    }
}
