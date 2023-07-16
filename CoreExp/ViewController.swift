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
        drawingView = DrawingView(frame: buildFrameWithSafeArea())
        drawingView.backgroundColor = .white
        view.addSubview(drawingView)
    }

    private func buildFrameWithSafeArea() -> CGRect {
        // TODO: look replacement for depreceated method
        let window = UIApplication.shared.windows.first
        let paddingTop = window?.safeAreaInsets.top ?? 0
        return CGRect.makeSquareFrame(
            withSideLength: view.frame.width,
            in: CGPoint(x: 0, y: paddingTop))
    }
}
