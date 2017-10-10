//
//  Meal.swift
//  FoodTracker
//
//  Created by Serena on 13/2/17.
//  Copyright © 2017 Serena. All rights reserved.
//

import Foundation
import UIKit

class Meal : NSObject { //meal extends nsobject
    
    var name : String
    var rating : Int
    var image: UIImage
    
    init?(name:String, rating: Int, image:UIImage){
        
        if(name.isEmpty){
            return nil
        }
        
        if(rating < 0 || rating > 5){
            return nil
        }
        self.name = name;
        self.rating = rating;
        self.image = image;
        
        
    }
    
    
    override var description : String {
        return "\(name), Rating: \(rating)"
    }
    
    
}
