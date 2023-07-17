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
    private var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUi()
        // WARNING: uncommenting the next line will cause the creation of multiple
        // objects containing an array with a million of odubles. This was just
        // an expriment to see how memory increase as resource-consuming objects
        // are created
//        allocateALotOfStuff()
    }

    private func setUpUi() {
        drawingView = DrawingView(frame: buildFrameWithSafeArea())
        drawingView.backgroundColor = .white
        drawingView.drawShape(withNumberOfSides: 7)

        slider = UISlider()

        view.backgroundColor = .white
        view.addSubview(drawingView)
        view.addSubview(slider)

        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.minimumValue = 3
        slider.maximumValue = 10
        slider.isContinuous = false
//        slider.addTarget(self, action: #selector(didSliderValueChange), for: .valueChanged)
        NSLayoutConstraint.activate([
            slider.topAnchor.constraint(equalTo: drawingView.bottomAnchor),
            slider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            slider.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
        ])
    }

    @objc
    private func didSliderValueChange(_ slider: UISlider) {
        let wholeValue = Int(slider.value.rounded())
        drawingView.setNeedsDisplay()
        drawingView.drawShape(withNumberOfSides: wholeValue)
    }

    private func buildFrameWithSafeArea() -> CGRect {
        // TODO: look replacement for depreceated method
        let window = UIApplication.shared.windows.first
        let paddingTop = window?.safeAreaInsets.top ?? 0
        return CGRect.makeSquareFrame(
            withSideLength: view.frame.width,
            in: CGPoint(x: 0, y: paddingTop))
    }

    func allocateALotOfStuff() {
        var stuff = [ResourceConsumingType]()

        for _ in 0..<100 {
            stuff.append(ResourceConsumingType())
        }

        print("A lot of memory")
    }
}
