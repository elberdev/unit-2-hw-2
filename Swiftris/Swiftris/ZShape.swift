//
//  ZShape.swift
//  Swiftris
//
//  Created by Elber Carneiro on 9/24/15.
//  Copyright © 2015 Elber Carneiro. All rights reserved.
//

class ZShape: Shape {
    /*
    
    Orientation 0 and 180
    
       * [ 1 ]
    [ 3 ][ 2 ]
    [ 4 ]
    
    Orientation 90 and 270
    
    [ 1 ][ 2*]
         [ 3 ][ 4 ]
    
    * marks the row/column indicator for the shape
    
    */
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero:       [( 1, 0), (1, 1), (0, 1), (0, 2)],
            Orientation.Ninety:     [(-1, 0), (0, 0), (0, 1), (1, 1)],
            Orientation.OneEighty:  [( 1, 0), (1, 1), (0, 1), (0, 2)],
            Orientation.TwoSeventy: [(-1, 0), (0, 0), (0, 1), (1, 1)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:       [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety:     [blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.OneEighty:  [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
            Orientation.TwoSeventy: [blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]]
        ]
    }
}
