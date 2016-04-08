//
//  RandomizerViewController.swift
//  MyTSARandomizer
//
//  Created by Alexander Nelson on 4/8/16.
//  Copyright © 2016 Jetwolfe Labs. All rights reserved.
//

import UIKit

class RandomizerViewController: UIViewController {


    @IBOutlet weak var arrowImageView: UIImageView!

    let leftArrowImage = UIImage(named: "arrow-left")!
    let rightArrowImage = UIImage(named: "arrow-right")!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGestureRecognizer = UITapGestureRecognizer(target:self, action:#selector(arrowImageViewTapped))
        arrowImageView.userInteractionEnabled = true
        arrowImageView.addGestureRecognizer(tapGestureRecognizer)

        displayRandomizedArrow()
    }

    func arrowImageViewTapped() {
        displayRandomizedArrow()
    }

    func displayRandomizedArrow() {
        if arc4random_uniform(10) < 5 {
            arrowImageView.image = leftArrowImage
        }
        else {
            arrowImageView.image = rightArrowImage
        }
    }
    
}