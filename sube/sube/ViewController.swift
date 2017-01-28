//
//  ViewController.swift
//  sube
//
//  Created by Carlos Saldana on 1/27/17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: BaseController {
    var mapController = MapController()

    override func viewDidLoad() {
        super.viewDidLoad()
        return
        mapController.initMap()
        self.view.addSubview(mapController.view)
        mapController.view.frame = self.view.frame
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

