//
//  File.swift
//  
//
//  Created by Adeel Ali on 3/11/21.
//

import Foundation

public class BackstagePass: QualityControlledItem {
    override func update(){
        if (item.quality < 50) {
            item.quality = item.quality + 1
            if (item.sellIn < 11) {
                if (item.quality < 50) {
                    item.quality = item.quality + 1
                }
            }
            
            if (item.sellIn < 6) {
                if (item.quality < 50) {
                    item.quality = item.quality + 1
                }
            }
        }
        
        item.sellIn = item.sellIn - 1
        
        if (item.sellIn < 0) {
            item.quality = 0
        }
    }
}
