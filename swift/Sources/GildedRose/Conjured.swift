//
//  File.swift
//  
//
//  Created by Adeel Ali on 3/11/21.
//

import Foundation

public class Conjured: QualityControlledItem {
    
    override func update() {
        item.quality =  max(0, item.quality - 2)
        item.sellIn = item.sellIn - 1
    }
}
