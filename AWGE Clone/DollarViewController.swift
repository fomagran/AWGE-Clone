//
//  DollarViewController.swift
//  AWGE Clone
//
//  Created by Fomagran on 2021/08/26.
//

import UIKit

class DollarViewController: UIViewController {

    @IBOutlet weak var backImageView: UIImageView!
    @IBOutlet weak var rotationImage: UIImageView!
    @IBOutlet weak var noiseImageView: UIImageView!
    @IBOutlet weak var shortNoiseImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let noiseGIF = UIImage.gif(name: "tvnoise")
        noiseImageView.image = noiseGIF
      
        let dollarGIF = UIImage.gif(name: "dollarRotation")
        rotationImage.image = dollarGIF
        
        let shortNoiseGIF = UIImage.gif(name: "tvShortNoiseGIF")
        shortNoiseImageView.image = shortNoiseGIF
        
        let earthGIF = UIImage.gif(name: "earthGIF")
        backImageView.image = earthGIF
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        backImageView.isUserInteractionEnabled = true
        backImageView.addGestureRecognizer(tapGestureRecognizer)
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //fade out
        UIView.animate(withDuration: 3, delay: 1, options: .curveEaseOut, animations: {
            self.shortNoiseImageView.alpha = 0.0
        }, completion: nil)
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        self.navigationController?.popViewController(animated: false)
    }
}
