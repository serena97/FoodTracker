//
//  ViewController.swift
//  FoodTracker
//
//  Created by Serena on 6/2/17.
//  Copyright © 2017 Serena. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    var meals:[Meal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultField.delegate=self;
    }
    
    

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        resultField.resignFirstResponder();
        return true;
    }
    
    //updates label when finishe typing text
    func textFieldDidBeginEditing(textField: UITextField) {
        resultLabel.text = "I ❤️ \(resultField.text!)";
    }
    
    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var resultField: UITextField!
    

    @IBAction func resultBtn(sender: AnyObject) {
        resultLabel.textColor = UIColor.cyanColor();
    }
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        let slidervalue = Int(sender.value);
        print(slidervalue);
        ratingLabel.text = "Rating: \(slidervalue)"
        
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        if let newMeal = Meal(name: resultField.text!, rating: Int(ratingSlider.value), image: ImageView.image!){
            
            meals.append(newMeal)
            printMeals()
            resultField.text = ""
            ratingLabel.text = "rating"
        }
    }
    
    func printMeals(){
        for m in meals {
            print(m.description)
        }
    }
    
    @IBOutlet weak var ratingSlider: UISlider!
    
    
    
    @IBAction func selectImageFromPhotoLibrary(sender: AnyObject) {
        resultField.resignFirstResponder();//keyboard is going to disappear
        
        let imagePickerController = UIImagePickerController();
        imagePickerController.sourceType = .PhotoLibrary
        //. is enum, UIImagePicker
        
        imagePickerController.delegate = self
        
        presentViewController(imagePickerController, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        guard let image = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing image but was provided the following \(info)")
        }
        
        ImageView.image = image
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

