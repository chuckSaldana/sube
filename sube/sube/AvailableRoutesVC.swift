//
//  AvailableRoutesVC.swift
//  sube
//
//  Created by Carlos Saldana on 1/28/17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

let routes = ["Plaza del Sol #5", "Andares #91", "Ciudadela #7", "Centro #1", "Universidad #105", "Tlajomulco #19", "Chapalita #84"]
let etas = ["Llegada inminente", "30 mins", "5 mins", "5 mins", "10 mins", "25 mins", "26 mins"]

class AvailableRoutesVC: BaseController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var routesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return routes.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .Default, reuseIdentifier: "RoutesCell")
        let currentETA = etas[indexPath.row]

        cell.textLabel?.text = "Ruta:   \(routes[indexPath.row])        ETA:    \(currentETA)"
        return cell
    }

    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let mapController = MapController()
        mapController.initMap(routeName: routes[indexPath.row])
        self.navigationController?.pushViewController(mapController, animated: true)
    }
}
