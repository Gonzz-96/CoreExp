//
//  ViewController.swift
//  CoreExp
//
//  Created by Gonzalo Campos on 16/07/23.
//

import UIKit
import CoreGraphics

class ViewController: UIViewController {

    private var drawingView: DrawingView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        drawingView = DrawingView(frame: CGRect.makeSquareFrame(
            withSideLength: view.frame.width,
            in: CGPoint.zero)
        )
        view.addSubview(drawingView)
    }
}
