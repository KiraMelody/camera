//
//  Image.swift
//  camera
//
//  Created by TJQ on 16/2/24.
//  Copyright © 2016年 KiraMelody. All rights reserved.
//

import Foundation
import UIKit

extension UIImage{
    
    /**
     获取图片中的像素颜色值
     
     - parameter pos: 图片中的位置
     
     - returns: 颜色值
     */
    func getPixelColor(pos:CGPoint)->(alpha: CGFloat, red: CGFloat, green: CGFloat,blue:CGFloat){
        let pixelData=CGDataProviderCopyData(CGImageGetDataProvider(self.CGImage))
        let data:UnsafePointer<UInt8> = CFDataGetBytePtr(pixelData)
        let pixelInfo: Int = ((Int(self.size.width) * Int(pos.y)) + Int(pos.x)) * 4
        
        let r = CGFloat(data[pixelInfo]) / CGFloat(255.0)
        let g = CGFloat(data[pixelInfo+1]) / CGFloat(255.0)
        let b = CGFloat(data[pixelInfo+2]) / CGFloat(255.0)
        let a = CGFloat(data[pixelInfo+3]) / CGFloat(255.0)
        
        return (a,r,g,b)
    }
    
}

func doWithInitialPhoto (sender:UIImage){
    let h = sender.size.height
    let w = sender.size.width
    for (var i:CGFloat = 0;i < h;i++)
    {
        for (var j:CGFloat = 0;j < w;j++)
        {
            
        }
    }
}