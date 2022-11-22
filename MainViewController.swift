//
//  ViewController.swift
//  petdoc
//
//  Created by 컴돌이 on 2022/11/07.
//

import UIKit
import Lottie

class MainViewController: UIViewController {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = ""
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    private var animationView: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor(red: 0.9, green: 0.3, blue: 0.5, alpha: 0.3)
        
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        animationView = .init(name: "122299-dog-pet-online-map-location-marker-service-preloader")
        animationView.frame = view.frame
        animationView.contentMode = .scaleAspectFit
        //animationView.loopMode = .loop
        animationView.animationSpeed = 1.0
        view.addSubview(animationView)
        
        animationView.play{ (finish) in
            self.animationView.removeFromSuperview()
            
            let vcName = self.storyboard?.instantiateViewController(withIdentifier: "goMain")
                    vcName?.modalPresentationStyle = .fullScreen
                    vcName?.modalTransitionStyle = .crossDissolve
                    self.present(vcName!, animated: true, completion: nil)
        }
    }


}

