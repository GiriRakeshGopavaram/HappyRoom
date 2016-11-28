//
//  ScatterPlotView.swift
//  HappyRoomiOSProject
//
//  Created by Gandham,Sai Kiran on 11/14/16.
//  Copyright © 2016 NWMSU. All rights reserved.
//

import UIKit
@IBDesignable
class ScatterPlotView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        var square:UIBezierPath
        let width = bounds.width
        let height = bounds.height
        for i in 0 ..< 8{
            for j in 0 ..< 8{
                square = UIBezierPath(rect: CGRect(x:40 + (i * Int(width/9)), y:40 + (j*Int(height/9)), width: Int(width/9) , height: Int(height/9)))
                square.lineWidth = 0.5
                square.stroke()
                
            }
        }
        let xaxis:UIBezierPath = UIBezierPath()
        xaxis.moveToPoint(CGPoint(x: 40,y: 40))
        xaxis.addLineToPoint(CGPoint(x: 40, y:
            400))
        UIColor.brownColor().setStroke()
        xaxis.stroke()
        let yaxis:UIBezierPath = UIBezierPath()
        yaxis.moveToPoint(CGPoint(x: 40,y: 335))
        yaxis.addLineToPoint(CGPoint(x: 450, y:
            335))
        UIColor.brownColor().setStroke()
        yaxis.stroke()
        
        for i in 0 ... 4{
            let point1:UIBezierPath = UIBezierPath(rect: CGRect(x: 50 + (i*50), y: 235 - (i*10), width: 8, height: 8))
            UIColor.greenColor().setFill()
            point1.fill()
            let point2:UIBezierPath = UIBezierPath(rect: CGRect(x: 100 + (i*50), y: 200 - (i*10), width: 8, height: 8))
            UIColor.blueColor().setFill()
            point2.fill()
            let point3:UIBezierPath = UIBezierPath(rect: CGRect(x: 70 + (i*50), y: 207 - (i*10), width: 8, height: 8))
            UIColor.redColor().setFill()
            point3.fill()
        }
        
        
    }
    

    

}
