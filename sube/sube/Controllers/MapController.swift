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

    var busMarker = GMSMarker()
    var mapView:GMSMapView? = nil

    func initMap(routeName route: String) {
        let camera = GMSCameraPosition.cameraWithLatitude(20.659698, longitude: -103.399, zoom: 13)
        mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView!.myLocationEnabled = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view = mapView
        busMarker.position = CLLocationCoordinate2DMake(20.659698, -103.399)
        busMarker.title = "Guadalajara"
        busMarker.snippet = "\(11) min"
        busMarker.map = mapView
        busMarker.icon = UIImage.init(data: UIImagePNGRepresentation(UIImage.init(named: "bus_image")!)!, scale: 10.0)

        let myPositionMarker = GMSMarker()
        myPositionMarker.position = CLLocationCoordinate2DMake(20.659698, latitudes[0])
        myPositionMarker.title = "Mi posición"
        myPositionMarker.snippet = "Estación Parque Agua Azul"
        myPositionMarker.map = mapView
        myPositionMarker.icon = UIImage.init(data: UIImagePNGRepresentation(UIImage.init(named: "myposition_marker")!)!, scale: 15.0)

        mapView?.selectedMarker = busMarker

        updateMarkerPosition()
    }

    func updateMarkerPosition() {
        var counter = 0.5
        var minutesArrive = 11
        for latitude in latitudes.reverse() {
            counter += 0.5
            delay(counter) {[weak self] in
                guard let strongSelf = self else { return }
                minutesArrive -= 1
                strongSelf.busMarker.snippet = "\(minutesArrive) min"
                strongSelf.busMarker.position = CLLocationCoordinate2DMake(20.659698, latitude)
                strongSelf.mapView?.animateToLocation(strongSelf.busMarker.position)

                if (minutesArrive == 1) {
                    strongSelf.showAlert("Listo", message: "El Camión ha llegado!")
                }
            }
        }
    }
}
