//
//  SecondViewController.swift
//  CollectionView
//
//  Created by Admin on 01.03.22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var flagImageView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var imgModule:ImageModule?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureImageModule()
        
    }
    
    @IBAction func didTapBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    func configureImageModule() {
        
        flagImageView.image = imgModule?.imageView
        titleLabel.text = imgModule?.fullName
        descriptionLabel.text = imgModule?.imageDescription
    }
    
}
