//
//  ViewController.swift
//  Mapitas
//
//  Created by MacBook on 10/10/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController ,MKMapViewDelegate,CLLocationManagerDelegate{
    @IBOutlet weak var mapa: MKMapView!
    let locationManager = CLLocationManager() //CoreLocation nos dara metodos necesarios para poder controlar las localidades en un mapa
    let location = CLLocation()
    override func viewDidLoad() {
        super.viewDidLoad()
        mapa.delegate = self //el delegado va a ser la clase viewcontroller para ejecutar el codigo
        locationManager.delegate = self  //tambien delegara para ejecutar el codigo
        locationManager.requestAlwaysAuthorization() //Solicitar autorizacion para recopilar datos privados
        locationManager.desiredAccuracy = kCLLocationAccuracyBest //que tan preciso requiero la ubicacion la mejor presicion disponible
        locationManager.distanceFilter = kCLDistanceFilterNone //no queremos filtrar nada
        locationManager.startUpdatingLocation()
        mapa.showsUserLocation = true //nos muestra la locacion del usuario

    }
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let region = MKCoordinateRegion(center: mapa.userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)) //Define algo y ancho de la region del mapa
        mapa.setRegion(region, animated: true)
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) //actualiza cada que se mueva la persona
    {
        print(locations)
    }
}

