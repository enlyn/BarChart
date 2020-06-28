//
//  AxisLabelUtils.swift
//  StockFinancials
//
//  Created by Roman Baitaliuk on 19/06/20.
//  Copyright © 2020 Roman Baitaliuk. All rights reserved.
//

import SwiftUI

struct AxisLabelUtils {
    static let uiFont = UIFont.systemFont(ofSize: 12)
    static let font = Font.system(size: 12)
    
    static var height: CGFloat {
        let anyString = String()
        return anyString.heightOfString(usingFont: AxisLabelUtils.uiFont)
    }
    
    static var halfHeight: CGFloat {
        return AxisLabelUtils.height / 2
    }
    
    static func maxWidth(values: [Double]) -> CGFloat {
        var maxWidth: CGFloat = 0
        let specifier = self.specifier(data: values)!
        for value in values {
            let valueString = String(format: specifier, value)
            let width = valueString.widthOfString(usingFont: AxisLabelUtils.uiFont)
            if width > maxWidth {
                maxWidth = width
            }
        }
        return maxWidth
    }
    
    static func specifier(data: [Double]) -> String? {
        let step = YAxis(data: data).step()
        if step < 1 {
            return "%.2f"
        } else if step >= 1 && step < 10 {
            return "%.1f"
        } else if step >= 10 {
            return "%.0f"
        } else {
            return nil
        }
    }
    
    static func roundUp(_ value: Double) -> Double? {
        if value < 1 {
            return ceil(value * 100 / 5) * 5 / 100
        } else if value >= 1 && value < 10 {
            return ceil(value * 10 / 5) * 5 / 10
        } else if value >= 10 {
            return ceil(value / 5) * 5
        } else {
            return nil
        }
    }
    
    static func width(value: String) -> CGFloat {
        return value.widthOfString(usingFont: AxisLabelUtils.uiFont)
    }
}

private extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }

    func heightOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.height
    }

    func sizeOfString(usingFont font: UIFont) -> CGSize {
        let fontAttributes = [NSAttributedString.Key.font: font]
        return self.size(withAttributes: fontAttributes)
    }
}