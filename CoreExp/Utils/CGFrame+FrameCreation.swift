//
//  CGFrame+FrameCreation.swift
//  CoreExp
//
//  Created by Gonzalo Campos on 16/07/23.
//

import CoreGraphics

extension CGRect {

    static func makeSquareFrame(withSideLength length: CGFloat,
                                in point: CGPoint) -> CGRect {
        CGRect(origin: point, size: CGSize(width: length, height: length))
    }
}
