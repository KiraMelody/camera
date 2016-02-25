//
//  ViewController.swift
//  camera
//
//  Created by TJQ on 16/2/21.
//  Copyright (c) 2016年 KiraMelody. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    @IBOutlet weak var iv: UIImageView!
    
    @IBAction func btnAlbum(sender: AnyObject) {
        
        let c=UIImagePickerController()
        c.sourceType=UIImagePickerControllerSourceType.PhotoLibrary
        c.delegate=self
        
        self.presentViewController(c, animated: true, completion: nil)
    }
    
    @IBAction func takephoto(sender: AnyObject) {
        
        let c=UIImagePickerController()
        c.sourceType=UIImagePickerControllerSourceType.Camera
        c.delegate=self
        if UIImagePickerController.isCameraDeviceAvailable(UIImagePickerControllerCameraDevice.Front){
            c.cameraDevice = UIImagePickerControllerCameraDevice.Front
        }
        self.presentViewController(c, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        
        //println(Info)
        
        //var image:UIImage=info[UIImagePickerControllerOriginalImage] as UIImage
        iv.image=image
        print(image.size.height)
        
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

