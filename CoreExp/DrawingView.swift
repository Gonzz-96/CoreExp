//
//  DrawingView.swift
//  CoreExp
//
//  Created by Gonzalo Campos on 16/07/23.
//

import UIKit
import CoreGraphics

class DrawingView: UIView {

    private var currentContext: CGContext!

    private lazy var frameMiddlePoint: CGPoint =
        CGPoint(x: frame.width / 2.0, y: frame.height / 2.0)

    override func draw(_ rect: CGRect) {
        guard let cgContext = UIGraphicsGetCurrentContext() else { return }
        drawShit(cgContext)
        backgroundColor = .white
    }

    private func drawShit(_ context: CGContext) {
        context.move(to: CGPoint(x: frameMiddlePoint.x, y: 0))
        context.addLine(to: CGPoint(x: frame.width, y: frameMiddlePoint.y))
        context.addLine(to: CGPoint(x: frameMiddlePoint.x, y: frame.height))
        context.addLine(to: CGPoint(x: 0, y: frameMiddlePoint.y))
        context.closePath()
        context.setStrokeColor(UIColor.red.cgColor)
        context.strokePath()

    }

    private func drawShitWithPath(_ context: CGContext) {
    }
}
