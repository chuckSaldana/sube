//
//  MapController.swift
//  sube
//
//  Created by Luis Nafarrate on 1/27/17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit
import GoogleMaps

class MapController: BaseController {
    let latitudes = [-103.351, -103.355, -103.359, -103.365, -103.369, -103.374, -103.379, -103.384, -103.389, -103.394]
    var marker = GMSMarker()
    var mapView:GMSMapView? = nil

    func initMap() {
        let camera = GMSCameraPosition.cameraWithLatitude(20.659698, longitude: -103.399, zoom: 13)
        mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView!.myLocationEnabled = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view = mapView
        marker.position = CLLocationCoordinate2DMake(20.659698, -103.399)
        marker.title = "Guadalajara"
        marker.snippet = "Jalisco"
        marker.map = mapView
        marker.icon = UIImage.init(data: UIImagePNGRepresentation(UIImage.init(named: "bus_image")!)!, scale: 10.0)

        updateMarkerPosition()
    }

    func updateMarkerPosition() {
        var counter = 0.5
        for latitude in latitudes.reverse() {
            counter += 0.5
            delay(counter) {[weak self] in
                guard let strongSelf = self else { return }
                strongSelf.marker.position = CLLocationCoordinate2DMake(20.659698, latitude)
                strongSelf.mapView?.animateToLocation(strongSelf.marker.position)
            }
        }
    }
}
