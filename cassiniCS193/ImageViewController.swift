//
//  ViewController.swift
//  cassiniCS193
//
//  Created by Kailash on 7/22/18.
//  Copyright © 2018 Kailash. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var imageURL: URL{
        didSet{
            imageView.image = nil
            if view.window != nil {
                fetchImage()//over network
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        if imageView.image == nil{
            fetchImage()
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    private func fetchImage(){
        
    }
    
}

