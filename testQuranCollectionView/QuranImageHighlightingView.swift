//
//  QuranImageHighlightingView.swift
//  testQuranCollectionView
//
//  Created by Safeen Azad on 9/23/17.
//  Copyright © 2017 SafeenAzad. All rights reserved.
//

//import UIKit
//import CoreGraphics
//
//
//class QuranImageHighlightingView: UIView {
//    var highlights: [QuranHighlightType: Set<AyahNumber>] = [:] {
//        didSet {
//            print("from highlights")
//            updateRectangleBounds()
//        }
//    }
//    
//    var ayahInfoData: [AyahNumber: [AyahInfo]]? {
//        didSet {
//            updateRectangleBounds()
//        }
//    }
//    
//    var imageScale: CGRect.Scale = .zero {
//        didSet {
//            updateRectangleBounds()
//        }
//    }
//    
//    var highlightedPosition: AyahWord.Position? {
//        didSet {
//            updateRectangleBounds()
//        }
//    }
//    
//    var highlightingRectangles: [QuranHighlightType: [CGRect]] = [:]
//    
//    func reset() {
//        highlights = [:]
//        ayahInfoData = nil
//        imageScale = .zero
//    }
//    
//    override func draw(_ rect: CGRect) {
//        super.draw(rect)
//        guard !highlights.isEmpty else { return }
//        
//        let context = UIGraphicsGetCurrentContext()
//        for (highlightType, rectangles) in highlightingRectangles {
//            context?.setFillColor(highlightType.color.cgColor)
//            for rect in rectangles {
//                context?.fill(rect)
//            }
//        }
//    }
//    
//    private func updateRectangleBounds() {
//        
//        highlightingRectangles.removeAll()
//        var filteredHighlightAyats: [QuranHighlightType: Set<AyahNumber>] = [:]
//        
//        for type in QuranHighlightType.sortedTypes {
//            let existingAyahts = filteredHighlightAyats.reduce(Set<AyahNumber>()) { $0.union($1.value) }
//            var ayats = highlights[type] ?? Set<AyahNumber>()
//            ayats.subtract(existingAyahts)
//            filteredHighlightAyats[type] = ayats
//        }
//        
//        for (type, ayat) in filteredHighlightAyats {
//            var rectangles: [CGRect] = []
//            for ayah in ayat {
//                guard let ayahInfo = ayahInfoData?[ayah] else { continue }
//                for piece in ayahInfo {
//                    let rectangle = piece.rect.scaled(by: imageScale)
//                    rectangles.append(rectangle)
//                }
//            }
//            highlightingRectangles[type] = rectangles
//        }
//        
//        if let position = highlightedPosition, let infos = ayahInfoData?[position.ayah] {
//            for info in infos where info.position == position.position {
//                highlightingRectangles[.wordByWord] = [info.rect.scaled(by: imageScale)]
//                break
//            }
//        }
//        setNeedsDisplay()
//    }
//    
//    // MARK: - Location of ayah
//    
//    func ayahWordPosition(at location: CGPoint, view: UIView) -> AyahWord.Position? {
//        guard let ayahInfoData = ayahInfoData else { return nil }
//        for (ayahNumber, ayahInfos) in ayahInfoData {
//            for piece in ayahInfos {
//                let rectangle = piece.rect.scaled(by: imageScale)
//                if rectangle.contains(location) {
//                    return AyahWord.Position(ayah: ayahNumber, position: piece.position, frame: convert(rectangle, to: view))
//                }
//            }
//        }
//        return nil
//    }
//}
//
//extension CGRect {
//    
//    public struct Scale {
//        public let scale: CGFloat
//        public let xOffset: CGFloat
//        public let yOffset: CGFloat
//        public init(scale: CGFloat, xOffset: CGFloat, yOffset: CGFloat) {
//            self.scale = scale
//            self.xOffset = xOffset
//            self.yOffset = yOffset
//        }
//        
//        public static let zero = Scale(scale: 0, xOffset: 0, yOffset: 0)
//    }
//    
//    public func scaled(by scale: Scale) -> CGRect {
//        return CGRect(x: minX * scale.scale + scale.xOffset,
//                      y: minY * scale.scale + scale.yOffset,
//                      width: width * scale.scale,
//                      height: height * scale.scale)
//    }
//}
