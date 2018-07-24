//
//  ViewController.swift
//  cassiniCS193
//
//  Created by Kailash on 7/22/18.
//  Copyright © 2018 Kailash. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController, UIScrollViewDelegate {
    //MARK: Properties and their Initializations
    var imageURL: URL?{
        didSet{
            if view.window != nil {
                fetchImage()//over network
            }
        }
    }
    
    private var image: UIImage?{
        get{
            return imageView.image
        }
        set{
            imageView.image = newValue
            imageView.sizeToFit()
            scrollView.contentSize = imageView.frame.size
        }
    }
    
    var imageView = UIImageView()
    
    @IBOutlet weak var scrollView: UIScrollView!{
        didSet{
            scrollView.maximumZoomScale = 1.0
            scrollView.minimumZoomScale = 0.25
            scrollView.delegate = self
            scrollView.addSubview(imageView)
        }
    }
    //MARK: ViewController Lifecycle methods
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        if imageView.image == nil{
            fetchImage()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //MARK: Private Methods
    private func fetchImage(){
        if let url = imageURL {
            let urlContents = try? Data(contentsOf: url)
            if let imageData = urlContents {
                imageView.image = UIImage(data: imageData);
            }
        }
    }
    
    //MARK: ScrollView Delegate Methods
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
}

