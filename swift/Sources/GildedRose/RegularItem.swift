//
//  File.swift
//  
//
//  Created by Adeel Ali on 3/11/21.
//

import Foundation


class RegularItem : QualityControlledItem {
    override func update() {
        if (item.quality > 0) {
            item.quality = item.quality - 1
        }
        item.sellIn = item.sellIn - 1
        
        if (item.sellIn < 0) {
            
            if (item.quality > 0) {
                item.quality = item.quality - 1
            }
            
        }
    }
}
