//
//  ViewController.swift
//  AWGE Clone
//
//  Created by Fomagran on 2021/08/26.
//

import UIKit
import SwiftGifOrigin
import CoreMotion


class ViewController: UIViewController {
    
    @IBOutlet weak var noiseImageView: UIImageView!
    @IBOutlet weak var rotationImageView1: UIImageView!
    @IBOutlet weak var rotationImageView2: UIImageView!
    @IBOutlet weak var rotationImageView3: UIImageView!
    @IBOutlet weak var rotationImageView4: UIImageView!
    @IBOutlet weak var rotationImageView5: UIImageView!
    @IBOutlet weak var rotationImageView6: UIImageView!
    @IBOutlet weak var shortNoiseImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let shortNoiseGIF = UIImage.gif(name: "tvShortNoiseGIF")
        shortNoiseImageView.image = shortNoiseGIF
        
        self.navigationController?.navigationBar.isHidden = true
        let noiseGIF = UIImage.gif(name: "tvnoise")
        noiseImageView.image = noiseGIF
        
        let dollarGIF = UIImage.gif(name: "dollarRotation")
        let earthGIF = UIImage.gif(name: "earthGIF")
        let capGIF = UIImage.gif(name: "capGIF")
        let cardGIF = UIImage.gif(name: "cardGIF")
        let clothesGIF = UIImage.gif(name: "clothesGIF")
        let shoesGIF = UIImage.gif(name: "shoesGIF")
        rotationImageView1.image = dollarGIF
        rotationImageView2.image = earthGIF
        rotationImageView3.image = capGIF
        rotationImageView4.image = cardGIF
        rotationImageView5.image = clothesGIF
        rotationImageView6.image = shoesGIF
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        rotationImageView1.isUserInteractionEnabled = true
        rotationImageView1.addGestureRecognizer(tapGestureRecognizer)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //fade out
        self.shortNoiseImageView.alpha = 1.0
        UIView.animate(withDuration: 3, delay: 1, options: .curveEaseOut, animations: {
            self.shortNoiseImageView.alpha = 0.0
        }, completion: nil)
    }
    
    
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        performSegue(withIdentifier: "showDollarViewController", sender: nil)
    }
}

