//
//  URLModels.swift
//  cassiniCS193
//
//  Created by Kailash on 7/23/18.
//  Copyright © 2018 Kailash. All rights reserved.
//

import Foundation

struct URLModels{
    enum urlTitle:String{
        case Saturn
        case Earth
        case Cassini
    }
    var all: Dictionary<String,URL> = ["\(URLModels.urlTitle.Saturn)":URL(string: "http://placehold.it/2000x2000&text=image4")!, "\(URLModels.urlTitle.Earth)":URL(string: "https://picjumbo.com/wp-content/uploads/big-colorful-sunflower-with-a-honeybee_free_stock_photos_picjumbo_HNCK4544-2210x1474.jpg")!,"\(URLModels.urlTitle.Cassini)":URL(string: "https://picjumbo.com/wp-content/uploads/big-colorful-sunflower-with-a-honeybee_free_stock_photos_picjumbo_HNCK4544-2210x1474.jpg")!]
}
