//
//  ViewController.swift
//  ShimmerEffect
//
//  Created by JeongminKim on 2023/07/03.
//

import UIKit
import ShimmerSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Shimmer View
        let shimmerView = ShimmeringView(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        view.addSubview(shimmerView)
        shimmerView.center = view.center
        
        // Content View
        let button = UIButton(frame: shimmerView.bounds)
        button.backgroundColor = .systemBlue
        button.setTitle("Cool Effect", for: .normal)
        button.layer.cornerRadius = 12
        
//        shimmerView.contentView = button
        
        let label = UILabel(frame: shimmerView.bounds)
        label.text = "Hello World"
        label.font = .systemFont(ofSize: 32, weight: .bold)
        
        shimmerView.contentView = label
        
        // Start/Stop animation
        shimmerView.shimmerDirection = .down
        
        shimmerView.isShimmering = true
    }


}

