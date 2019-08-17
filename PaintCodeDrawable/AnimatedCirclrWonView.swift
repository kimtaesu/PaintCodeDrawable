//
//  CircleWon.swift
//  PaintCodeDrawable
//
//  Created by tskim on 17/08/2019.
//  Copyright © 2019 hucet. All rights reserved.
//

import UIKit

class AnimatedCirclrWonView: UIView {

    private var animationStartDate = Date()
    private let duration = 5.0
    private lazy var displayLink: CADisplayLink = {
        CADisplayLink(target: self, selector: #selector(handleUpdate))
    }()

    private let startAngle = 0.0
    private let endAngle = 360.0
    
    private var currentAngle: CGFloat = 0
    deinit {
        displayLink.invalidate()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }
    private func initView() {
        displayLink.add(to: .main, forMode: .default)
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        StyleKitName.drawCanvas1()
        StyleKitName.drawCanvas2(frame: CGRect(origin: .zero, size: rect.size), resizing: .stretch, angle: currentAngle)
    }
    @objc private func handleUpdate(displaylink: CADisplayLink) {
        let now = Date()
        let elapsedTime = now.timeIntervalSince(animationStartDate) // 애니매이션이 시작한 후 부터 지난 시간
        if elapsedTime > duration {
            animationStartDate = Date()
            return
        }
        let percentage = elapsedTime / duration
        currentAngle = CGFloat(startAngle - percentage * (endAngle - startAngle))
        setNeedsDisplay()
    }
}

import UIKit
public class StyleKitName: NSObject {
    @objc dynamic public class func drawCanvas1(
        frame targetFrame: CGRect = CGRect (x: 0, y: 0, width: 60, height: 50),
        resizing: ResizingBehavior = .aspectFit,
        size: CGSize = CGSize(width: 60, height: 50)
    ) {

        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        //// Resize to Target Frame
        context.saveGState ()
        let resizedFrame = resizing.apply (rect: CGRect (x: 0, y: 0, width: 60, height: 50), target: targetFrame)
        context.translateBy (x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy (x: resizedFrame.width / 60, y: resizedFrame.height / 50)
        //// Symbol Drawing
        context.saveGState ()
        context.translateBy (x: 0, y: 148)
        let symbolRect = CGRect(x: 0, y: -148, width: size.width, height: size.height)
        context.saveGState()
        context.clip(to: symbolRect)
        context.translateBy (x: symbolRect.minX, y: symbolRect.minY)
        context.restoreGState()
        context.restoreGState ()
        context.restoreGState()
    }

    @objc dynamic public class func drawCanvas2(frame targetFrame: CGRect = CGRect (x: 0, y: 0, width: 180, height: 148), resizing: ResizingBehavior = .aspectFit, angle: CGFloat = 0) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext ()!
        ///I Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply (rect: CGRect(x: 0, y: 0, width: 180, height: 148), target: targetFrame)
        context.translateBy (x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy (x: resizedFrame.width / 180, y: resizedFrame.height / 148)
        ///I Color Declarations
        let fillColor = UIColor (red: 0.004, green: 0.000, blue: 0.008, alpha: 1.000)
        let fillColor2 = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)

        //1I circle_arrow.svg Group
        //// Group 2
        //// Bezier 4 Dra
        context.saveGState()
        context.translateBy (x: 89.5, y: 74.72)
        context.rotate(by: -angle * CGFloat.pi / 180)

        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: 48.62, y: 48.36))
        bezier4Path.addCurve(to: CGPoint(x: -0.09, y: 68.53), controlPoint1: CGPoint (x: 35.6, y: 61.37), controlPoint2: CGPoint (x: 18.31, y: 68.53))
        bezier4Path.addCurve(to: CGPoint(x: -68.97, y: -0.28), controlPoint1: CGPoint(x: -38.05, y: 68.53), controlPoint2: CGPoint (x: -68.93, y: 37.66))
        bezier4Path.addLine (to: CGPoint(x: -54.92, y: 13.78))
        bezier4Path.addCurve(to: CGPoint(x: -51.56, y: 13.78), controlPoint1: CGPoint(x: -53.99, y: 14.71), controlPoint2: CGPoint(x: -52.49, y: 14.71))
        bezier4Path.addCurve(to: CGPoint(x: -51.56, y: 10.43), controlPoint1: CGPoint(x: -50.64, y: 12.85), controlPoint2: CGPoint(x: -50.64, y: 11.35))
        bezier4Path.addLine(to: CGPoint (x: -70.18, y: -8.2))
        bezier4Path.addLine(to: CGPoint (x: -88.8, y: 10.43))
        bezier4Path.addCurve(to: CGPoint(x: -88.8, y: 13.78), controlPoint1: CGPoint (x: -89.73, y: 11.35), controlPoint2: CGPoint (x: -89.73, y: 12.85))
        bezier4Path.addCurve(to: CGPoint(x: -87.13, y: 14.48), controlPoint1: CGPoint(x: -88.34, y: 14.25), controlPoint2: CGPoint (x: -87.73, y: 14.48))
        bezier4Path.addCurve(to: CGPoint(x: -85.45, y: 13.78), controlPoint1: CGPoint (x: -86.52, y: 14.48), controlPoint2: CGPoint(x: -85.91, y: 14.24))
        bezier4Path.addLine (to: CGPoint(x: -73.63, y: 1.95))
        bezier4Path.addCurve(to: CGPoint(x: -0.12, y: 73.28), controlPoint1: CGPoint(x: -72.39, y: 41.48), controlPoint2: CGPoint(x: -39.94, y: 73.28))
        bezier4Path.addCurve(to: CGPoint(x: 51.96, y: 51.71), controlPoint1: CGPoint (x: 19.56, y: 73.28), controlPoint2: CGPoint (x: 38.05, y: 65.62))
        bezier4Path.addCurve(to: CGPoint(x: 51.96, y: 48.36), controlPoint1: CGPoint (x: 52.89, y: 50.79), controlPoint2: CGPoint(x: 52.89, y: 49.28))
        bezier4Path.addCurve(to: CGPoint(x: 48.62, y: 48.36), controlPoint1: CGPoint (x: 51.06, y: 47.43), controlPoint2: CGPoint (x: 49.55, y: 47.43))
        bezier4Path.close()
        bezier4Path.move(to: CGPoint(x: 88.82, y: -14.77))
        bezier4Path.addCurve(to: CGPoint(x: 85.47, y: -14.77), controlPoint1: CGPoint (x: 87.9, y: -15.69), controlPoint2: CGPoint (x: 86.4, y: -15.69))
        bezier4Path.addLine(to: CGPoint(x: 73.65, y: -2.94))
        bezier4Path.addCurve(to: CGPoint(x: 0.13, y: -74.26), controlPoint1: CGPoint(x: 72.4, y: -42.47), controlPoint2: CGPoint(x: 39.95, y: -74.26))
        bezier4Path.addCurve(to: CGPoint(x: -51.95, y: -52.69), controlPoint1: CGPoint(x: -19.55, y: -74.26), controlPoint2: CGPoint(x: -38.04, y: -66.6))
        bezier4Path.addCurve(to: CGPoint(x: -51.95, y: -49.34), controlPoint1: CGPoint (x: -52.88, y: -51.77), controlPoint2: CGPoint(x: -52.88, y: -50.26))
        bezier4Path.addCurve(to: CGPoint(x: -48.6, y: -49.34), controlPoint1: CGPoint(x: -51.03, y: -48.41), controlPoint2: CGPoint(x: -49.52, y: -48.41))
        bezier4Path.addCurve(to: CGPoint(x: 0.12, y: -69.51), controlPoint1: CGPoint (x: -35.58, y: -62.35), controlPoint2: CGPoint (x: -18.29, y: -69.51))
        bezier4Path.addCurve(to: CGPoint(x: 69, y: -0.7), controlPoint1: CGPoint (x: 38.06, y: -69.51), controlPoint2: CGPoint (x: 68.96, y: -38.65))
        bezier4Path.addLine(to: CGPoint(x: 54.95, y: -14.77))
        bezier4Path.addCurve(to: CGPoint(x: 51.59, y: -14.77), controlPoint1: CGPoint(x: 54.02, y: -15.69), controlPoint2: CGPoint (x: 52.52, y: -15.69))
        bezier4Path.addCurve(to: CGPoint(x: 51.59, y: -11.41), controlPoint1: CGPoint(x: 50.67, y: -13.84), controlPoint2: CGPoint (x: 50.67, y: -12.33))
        bezier4Path.addLine(to: CGPoint(x: 70.21, y: 7.22))
        bezier4Path.addLine (to: CGPoint (x: 88.83, y: -11.41))
        bezier4Path.addCurve(to: CGPoint(x: 88.82, y: -14.77), controlPoint1: CGPoint(x: 89.75, y: -12.33), controlPoint2: CGPoint (x: 89.75, y: -13.84))
        bezier4Path.close()
        fillColor.setFill()
        bezier4Path.fill ()
        context.restoreGState()

        /// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 132, y: 83.77))
        bezier3Path.addLine (to: CGPoint(x: 120.47, y: 83.77))
        bezier3Path.addLine (to: CGPoint(x: 113.8, y: 107.72))
        bezier3Path.addLine(to: CGPoint (x: 105.42, y: 107.72))
        bezier3Path.addLine (to: CGPoint(x: 98.76, y: 83.77))
        bezier3Path.addLine (to: CGPoint (x: 80.24, y: 83.77))
        bezier3Path.addLine(to: CGPoint(x: 73.49, y: 107.72))
        bezier3Path.addLine (to: CGPoint (x: 64.57, y: 107.72))
        bezier3Path.addLine(to: CGPoint (x: 58.17, y: 83.77))
        bezier3Path.addLine(to: CGPoint(x: 47, y: 83.77))
        bezier3Path.addLine(to: CGPoint(x: 47, y: 77.65))
        bezier3Path.addLine(to: CGPoint (x: 56.59, y: 77.65))
        bezier3Path.addLine (to: CGPoint(x: 54.84, y: 71.03))
        bezier3Path.addLine(to: CGPoint (x: 47, y: 71.03))
        bezier3Path.addLine(to: CGPoint(x: 47, y: 64.95))
        bezier3Path.addLine(to: CGPoint(x: 53.22, y: 64.95))
        bezier3Path.addLine(to: CGPoint(x: 47, y: 41.72))
        bezier3Path.addLine(to: CGPoint(x: 55.96, y: 41.72))
        bezier3Path.addLine (to: CGPoint(x: 61.32, y: 64.95))
        bezier3Path.addLine(to: CGPoint (x: 77.72, y: 64.95))
        bezier3Path.addLine(to: CGPoint (x: 84.39, y: 41.72))
        bezier3Path.addLine(to: CGPoint (x: 94.88, y: 41.72))
        bezier3Path.addLine(to: CGPoint(x: 101.46, y: 64.95))
        bezier3Path.addLine(to: CGPoint(x: 117.41, y: 64.95))
        bezier3Path.addLine(to: CGPoint(x: 123.13, y: 41.72))
        bezier3Path.addLine (to: CGPoint (x: 132, y: 41.72))
        bezier3Path.addLine (to: CGPoint (x: 125.51, y: 64.95))
        bezier3Path.addLine (to: CGPoint (x: 132, y: 64.95))
        bezier3Path.addLine (to: CGPoint(x: 132, y: 71.03))
        bezier3Path.addLine (to: CGPoint (x: 123.94, y: 71.03))
        bezier3Path.addLine (to: CGPoint(x: 122.09, y: 77.65))
        bezier3Path.addLine(to: CGPoint (x: 132, y: 77.65))
        bezier3Path.addLine (to: CGPoint(x: 132, y: 83.77))
        bezier3Path.close()
        bezier3Path.move (to: CGPoint(x: 93.53, y: 64.95))
        bezier3Path.addCurve(to: CGPoint(x: 89.43, y: 49.73), controlPoint1: CGPoint(x: 91.16, y: 56.34), controlPoint2: CGPoint(x: 89.79, y: 51.26))
        bezier3Path.addCurve(to: CGPoint(x: 85.29, y: 64.95), controlPoint1: CGPoint (x: 88.92, y: 52.37), controlPoint2: CGPoint (x: 87.54, y: 57.45))
        bezier3Path.addLine (to: CGPoint(x: 93.53, y: 64.95))
        bezier3Path.close()

        bezier3Path.move(to: CGPoint(x: 116.01, y: 71.03))
        bezier3Path.addLine (to: CGPoint (x: 103.31, y: 71.03))
        bezier3Path.addLine (to: CGPoint(x: 105.15, y: 77.65))
        bezier3Path.addLine (to: CGPoint (x: 114.34, y: 77.65))
        bezier3Path.addLine(to: CGPoint (x: 116.01, y: 71.03))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 97.09, y: 77.65))
        bezier3Path.addLine(to: CGPoint(x: 95.24, y: 71.03))
        bezier3Path.addLine (to: CGPoint (x: 83.71, y: 71.03))
        bezier3Path.addLine(to: CGPoint(x: 81.91, y: 77.65))
        bezier3Path.addLine(to: CGPoint (x: 97.09, y: 77.65))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 76.1, y: 71.03))
        bezier3Path.addLine(to: CGPoint (x: 62.81, y: 71.03))
        bezier3Path.addLine(to: CGPoint (x: 64.34, y: 77.65))
        bezier3Path.addLine(to: CGPoint(x: 74.25, y: 77.65))
        bezier3Path.addLine (to: CGPoint (x: 76.1, y: 71.03))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 112.99, y: 83.77))
        bezier3Path.addLine (to: CGPoint(x: 106.59, y: 83.77))
        bezier3Path.addCurve(to: CGPoint(x: 109.48, y: 98.49), controlPoint1: CGPoint (x: 108.1, y: 90.67), controlPoint2: CGPoint(x: 109.06, y: 95.58))
        bezier3Path.addLine(to: CGPoint(x: 112.99, y: 83.77))
        bezier3Path.close()
        bezier3Path.move(to: CGPoint(x: 72.59, y: 83.77))
        bezier3Path.addLine(to: CGPoint (x: 65.65, y: 83.77))
        bezier3Path.addCurve(to: CGPoint(x: 68.89, y: 98.49), controlPoint1: CGPoint (x: 67.27, y: 90.67), controlPoint2: CGPoint(x: 68.35, y: 95.58))
        bezier3Path.addCurve(to: CGPoint(x: 72.59, y: 83.77), controlPoint1: CGPoint (x: 69.94, y: 94.02), controlPoint2: CGPoint (x: 71.17, y: 89.11))
        bezier3Path.close()
        fillColor2.setFill ()
        bezier3Path.fill()
        context.restoreGState()
    }
}
@objc(StyleKitNameResizingBehavior)
public enum ResizingBehavior: Int {
    case aspectFit /// The content is proportionally resized to fit into the target rectangle.
    case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
    case stretch /// The content is stretched to match the entire target rectangle.
    case center /// The content is cente red in the target rectangle, but it is NOT resized.
    public func apply(rect: CGRect, target: CGRect) -> CGRect {
        if rect == target || rect == CGRect.zero {
            return rect
        }
        var scales = CGSize.zero
        scales.width = abs (target.width / rect.width)
        scales.height = abs(target.height / rect.height)

        switch self {
        case .aspectFit:
            scales.width = min(scales.width, scales.height)
            scales.height = scales.width
        case .aspectFill:
            scales.width = max (scales.width, scales.height)
            scales.height = scales.width
        case .stretch:
            break
        case .center:
            scales.width = 1
            scales.height = 1
        }
        var result = rect.standardized
        result.size.width *= scales.width
        result.size.height *= scales.height
        result.origin.x = target.minX + (target.width - result.width) / 2
        result.origin.y = target.minY + (target.height - result.height) / 2
        return result
    }
}
