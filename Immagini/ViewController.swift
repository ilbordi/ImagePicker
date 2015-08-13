//
//  ViewController.swift
//  Immagini
//
//  Created by Francesco Bordignon on 13/08/15.
//  Copyright © 2015 Francesco Bordignon. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet var img: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func prendiImmagine(sender: UIButton) {
        
        if PHPhotoLibrary.authorizationStatus() == PHAuthorizationStatus.Denied{
            
            if let url = NSURL(string: UIApplicationOpenSettingsURLString){
                
                UIApplication.sharedApplication().openURL(url)
            }
            
            
            
            
        }else{
        
        
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        imagePicker.delegate = self
        self.presentViewController(imagePicker, animated: true, completion: nil)
        
        }
        
        
        
        
        
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        img.image = image
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    

}

