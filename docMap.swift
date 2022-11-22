import UIKit
import GoogleMaps
import FloatingPanel


class docMap: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let panel = FloatingPanelController()
        panel.set(contentViewController: SearchViewController())
        panel.addPanel(toParent: self)
    }
    
    override func loadView() {
            let camera = GMSCameraPosition.camera(withLatitude: 35.2674, longitude: 129.0788, zoom: 6.0)
            let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
            view = mapView
            
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: 35.2674, longitude: 129.0788)
            marker.title = "Sydney"
            marker.snippet = "Australia"
            marker.map = mapView
        }
}
