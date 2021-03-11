//
//  File.swift
//  
//
//  Created by Adeel Ali on 3/11/21.
//

import Foundation

public class AgedBrie : QualityControlledItem {
    override func update(){        
        if (item.quality < 50) {
            item.quality = item.quality + 1
        }
        item.sellIn = item.sellIn - 1
    }
}
