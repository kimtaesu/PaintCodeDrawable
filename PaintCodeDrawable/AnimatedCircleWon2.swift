//
//  CircleWon.swift
//  PaintCodeDrawable
//
//  Created by tskim on 17/08/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import UIKit

class AnimatedCircleWon2: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }
    
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 100, height: 100)
    }
    
    private func initView() {
        let circleArrowLayer = CAShapeLayer()
        circleArrowLayer.path = self.circleArrowPath().cgPath
        circleArrowLayer.fillColor = UIColor.brown.cgColor
        layer.addSublayer(circleArrowLayer)
        let wonLayer = CAShapeLayer()
        wonLayer.path = self.wonPath().cgPath
        wonLayer.fillColor = UIColor.brown.cgColor
        layer.addSublayer(wonLayer)
        
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.toValue = CGFloat(Double.pi * 2.0)
        animation.duration = 2 // seconds
        animation.repeatCount = .infinity
        circleArrowLayer.add(animation, forKey: "rotationGroup")
    }
    
    private func wonPath() -> UIBezierPath {
        let symbolWonPath = UIBezierPath()
        symbolWonPath.move(to: CGPoint(x: 53, y: 35.01))
        symbolWonPath.addLine (to: CGPoint(x: 48.66, y: 35.01))
        symbolWonPath.addLine(to: CGPoint(x: 46.15, y: 43.72))
        symbolWonPath.addLine(to: CGPoint(x: 42.99, y: 43.72))
        symbolWonPath.addLine (to: CGPoint(x: 40.49, y: 35.01))
        symbolWonPath.addLine (to: CGPoint(x: 33.52, y: 35.01))
        symbolWonPath.addLine (to: CGPoint (x: 30.97, y: 43.72))
        symbolWonPath.addLine(to: CGPoint(x: 27.61, y: 43.72))
        symbolWonPath.addLine(to: CGPoint(x: 25.21, y: 35.01))
        symbolWonPath.addLine(to: CGPoint(x: 21, y: 35.01))
        symbolWonPath.addLine(to: CGPoint(x: 21, y: 32.78))
        symbolWonPath.addLine(to: CGPoint(x: 24.61, y: 32.78))
        symbolWonPath.addLine(to: CGPoint(x: 23.95, y: 30.38))
        symbolWonPath.addLine(to: CGPoint(x: 21, y: 30.38))
        symbolWonPath.addLine(to: CGPoint(x: 21, y: 28.17))
        symbolWonPath.addLine(to: CGPoint(x: 23.34, y: 28.17))
        symbolWonPath.addLine(to: CGPoint(x: 21, y: 19.72))
        symbolWonPath.addLine (to: CGPoint (x: 24.37, y: 19.72))
        symbolWonPath.addLine(to: CGPoint(x: 26.39, y: 28.17))
        symbolWonPath.addLine(to: CGPoint(x: 32.57, y: 28.17))
        symbolWonPath.addLine (to: CGPoint (x: 35.08, y: 19.72))
        symbolWonPath.addLine (to: CGPoint(x: 39.03, y: 19.72))
        symbolWonPath.addLine(to: CGPoint(x: 41.5, y: 28.17))
        symbolWonPath.addLine (to: CGPoint(x: 47.51, y: 28.17))
        symbolWonPath.addLine(to: CGPoint(x: 49.66, y: 19.72))
        symbolWonPath.addLine (to: CGPoint(x: 53, y: 19.72))
        symbolWonPath.addLine (to: CGPoint(x: 50.56, y: 28.17))
        symbolWonPath.addLine(to: CGPoint(x: 53, y: 28.17))
        symbolWonPath.addLine (to: CGPoint (x: 53, y: 30.38))
        symbolWonPath.addLine(to: CGPoint(x: 49.96, y: 30.38))
        symbolWonPath.addLine(to: CGPoint(x: 49.27, y: 32.78))
        symbolWonPath.addLine(to: CGPoint(x: 53, y: 32.78))
        symbolWonPath.addLine(to: CGPoint(x: 53, y: 35.01))
        symbolWonPath.close()
        symbolWonPath.move(to: CGPoint (x: 38.52, y: 28.17))
        symbolWonPath.addCurve(to: CGPoint(x: 36.97, y: 22.63), controlPoint1: CGPoint (x: 37.62, y: 25.03), controlPoint2: CGPoint(x: 37.11, y: 23.19))
        symbolWonPath.addCurve(to: CGPoint(x: 35.41, y: 28.17), controlPoint1: CGPoint (x: 36.78, y: 23.59), controlPoint2: CGPoint(x: 36.26, y: 25.44))
        symbolWonPath.addLine (to: CGPoint(x: 38.52, y: 28.17))
        symbolWonPath.close()
        symbolWonPath.move(to: CGPoint (x: 46.98, y: 30.38))
        symbolWonPath.addLine(to: CGPoint(x: 42.2, y: 30.38))
        symbolWonPath.addLine(to: CGPoint(x: 42.89, y: 32.78))
        symbolWonPath.addLine(to: CGPoint(x: 46.35, y: 32.78))
        symbolWonPath.addLine(to: CGPoint(x: 46.98, y: 30.38))
        symbolWonPath.close()
        symbolWonPath.move(to: CGPoint(x: 39.86, y: 32.78))
        symbolWonPath.addLine (to: CGPoint (x: 39.16, y: 30.38))
        symbolWonPath.addLine(to: CGPoint(x: 34.82, y: 30.38))
        symbolWonPath.addLine (to: CGPoint(x: 34.14, y: 32.78))
        symbolWonPath.addLine(to: CGPoint(x: 39.86, y: 32.78))
        symbolWonPath.close()
        symbolWonPath.move(to: CGPoint(x: 31.96, y: 30.38))
        symbolWonPath.addLine(to: CGPoint(x: 26.95, y: 30.38))
        symbolWonPath.addLine(to: CGPoint(x: 27.53, y: 32.78))
        symbolWonPath.addLine(to: CGPoint(x: 31.26, y: 32.78))
        symbolWonPath.addLine(to: CGPoint(x: 31.96, y: 30.38))
        symbolWonPath.close()
        symbolWonPath.move(to: CGPoint(x: 45.84, y: 35.01))
        symbolWonPath.addLine(to: CGPoint(x: 43.44, y: 35.01))
        symbolWonPath.addCurve(to: CGPoint(x: 44.52, y: 40.36), controlPoint1: CGPoint (x: 44, y: 37.52), controlPoint2: CGPoint(x: 44.36, y: 39.3))
        symbolWonPath.addLine(to: CGPoint(x: 45.84, y: 35.01))
        symbolWonPath.close()
        symbolWonPath.move(to: CGPoint(x: 30.63, y: 35.01))
        symbolWonPath.addLine(to: CGPoint(x: 28.02, y: 35.01))
        symbolWonPath.addCurve(to: CGPoint(x: 29.24, y: 40.36), controlPoint1: CGPoint (x: 28.63, y: 37.52), controlPoint2: CGPoint(x: 29.04, y: 39.3))
        symbolWonPath.addCurve(to: CGPoint(x: 30.63, y: 35.01), controlPoint1: CGPoint (x: 29.64, y: 38.74), controlPoint2: CGPoint (x: 30.1, y: 36.95))
        symbolWonPath.close()
        return symbolWonPath
    }
    private func circleArrowPath() -> UIBezierPath {
        let circleArrowPath = UIBezierPath()
        circleArrowPath.move (to: CGPoint(x: 57.11, y: 51.15))
        circleArrowPath.addCurve(to: CGPoint (x: 36.97, y: 59.56), controlPoint1: CGPoint(x: 51.73, y: 56.57), controlPoint2: CGPoint(x: 44.58, y: 59.56))
        circleArrowPath.addCurve(to: CGPoint(x: 8.49, y: 30.86), controlPoint1: CGPoint(x: 21.27, y: 59.56), controlPoint2: CGPoint(x: 8.5, y: 46.69))
        circleArrowPath.addLine (to: CGPoint (x: 14.3, y: 36.73))
        circleArrowPath.addCurve(to: CGPoint(x: 15.69, y: 36.73), controlPoint1: CGPoint(x: 14.68, y: 37.11), controlPoint2: CGPoint(x: 15.3, y: 37.11))
        circleArrowPath.addCurve(to: CGPoint(x: 15.69, y: 35.32), controlPoint1: CGPoint(x: 16.07, y: 36.34), controlPoint2: CGPoint(x: 16.07, y: 35.71))
        circleArrowPath.addLine (to: CGPoint (x: 7.99, y: 27.55))
        circleArrowPath.addLine (to: CGPoint(x: 0.29, y: 35.32))
        circleArrowPath.addCurve (to: CGPoint(x: 0.29, y: 36.73), controlPoint1: CGPoint(x: -0.1, y: 35.71), controlPoint2: CGPoint (x: -0.1, y: 36.34))
        circleArrowPath.addCurve (to: CGPoint(x: 0.98, y: 37.01), controlPoint1: CGPoint(x: 0.48, y: 36.92), controlPoint2: CGPoint (x: 0.73, y: 37.01))
        circleArrowPath.addCurve(to: CGPoint (x: 1.67, y: 36.73), controlPoint1: CGPoint(x: 1.23, y: 37.01), controlPoint2: CGPoint (x: 1.49, y: 36.92))
        circleArrowPath.addLine (to: CGPoint (x: 6.56, y: 31.79))
        circleArrowPath.addCurve (to: CGPoint(x: 36.96, y: 61.54), controlPoint1: CGPoint(x: 7.07, y: 48.28), controlPoint2: CGPoint(x: 20.49, y: 61.54))
        circleArrowPath.addCurve (to: CGPoint(x: 58.49, y: 52.55), controlPoint1: CGPoint(x: 45.09, y: 61.54), controlPoint2: CGPoint(x: 52.74, y: 58.35))
        circleArrowPath.addCurve(to: CGPoint(x: 58.49, y: 51.15), controlPoint1: CGPoint(x: 58.87, y: 52.16), controlPoint2: CGPoint(x: 58.87, y: 51.53))
        circleArrowPath.addCurve (to: CGPoint(x: 57.11, y: 51.15), controlPoint1: CGPoint(x: 58.12, y: 50.76), controlPoint2: CGPoint(x: 57.49, y: 50.76))
        circleArrowPath.close()
        circleArrowPath.move (to: CGPoint(x: 73.73, y: 24.82))
        circleArrowPath.addCurve (to: CGPoint(x: 72.34, y: 24.82), controlPoint1: CGPoint(x: 73.35, y: 24.43), controlPoint2: CGPoint(x: 72.73, y: 24.43))
        circleArrowPath.addLine (to: CGPoint (x: 67.46, y: 29.75))
        circleArrowPath.addCurve (to: CGPoint(x: 37.06, y: -0), controlPoint1: CGPoint(x: 66.94, y: 13.26), controlPoint2: CGPoint (x: 53.52, y: -0))
        circleArrowPath.addCurve (to: CGPoint(x: 15.53, y: 9), controlPoint1: CGPoint (x: 28.92, y: -0), controlPoint2: CGPoint (x: 21.28, y: 3.2))
        circleArrowPath.addCurve (to: CGPoint(x: 15.53, y: 10.4), controlPoint1: CGPoint(x: 15.14, y: 9.38), controlPoint2: CGPoint (x: 15.14, y: 10.01))
        circleArrowPath.addCurve (to: CGPoint(x: 16.91, y: 10.4), controlPoint1: CGPoint(x: 15.91, y: 10.78), controlPoint2: CGPoint (x: 16.53, y: 10.78))
        circleArrowPath.addCurve (to: CGPoint(x: 37.05, y: 1.98), controlPoint1: CGPoint(x: 22.29, y: 4.97), controlPoint2: CGPoint (x: 29.45, y: 1.98))
        circleArrowPath.addCurve(to: CGPoint(x: 65.54, y: 30.68), controlPoint1: CGPoint (x: 52.74, y: 1.98), controlPoint2: CGPoint (x: 65.52, y: 14.85))
        circleArrowPath.addLine (to: CGPoint (x: 59.72, y: 24.82))
        circleArrowPath.addCurve(to: CGPoint (x: 58.34, y: 24.82), controlPoint1: CGPoint(x: 59.34, y: 24.43), controlPoint2: CGPoint(x: 58.72, y: 24.43))
        circleArrowPath.addCurve(to: CGPoint(x: 58.34, y: 26.22), controlPoint1: CGPoint(x: 57.96, y: 25.2), controlPoint2: CGPoint (x: 57.96, y: 25.83))
        circleArrowPath.addLine (to: CGPoint(x: 66.04, y: 33.99))
        circleArrowPath.addLine (to: CGPoint (x: 73.73, y: 26.22))
        circleArrowPath.addCurve (to: CGPoint(x: 73.73, y: 24.82), controlPoint1: CGPoint(x: 74.12, y: 25.83), controlPoint2: CGPoint(x: 74.12, y: 25.2))
        circleArrowPath.close()
        
        return circleArrowPath
    }
}
