//
//  File.swift
//  
//
//  Created by Adeel Ali on 3/10/21.
//

import Foundation

public class QualityControlledItem {
    let item : Item
    init(item : Item) {
        self.item = item

    }
    
    func update() {
        if(item.name == "Aged Brie"){
            updateAgedBrie()
        }else{
            let item = self.item
            if (item.name != "Aged Brie" && item.name != "Backstage passes to a TAFKAL80ETC concert"  ) {
                if (item.name != "Sulfuras, Hand of Ragnaros") {
                    if (item.quality > 0) {
                            item.quality = item.quality - 1
                    }
                }
            } else {
                if (item.quality < 50) {
                    item.quality = item.quality + 1
                    
                    if (item.name == "Backstage passes to a TAFKAL80ETC concert") {
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
                }
            }
            
            if (item.name != "Sulfuras, Hand of Ragnaros") {
                item.sellIn = item.sellIn - 1
            }
            
            if (item.sellIn < 0) {
                if (item.name != "Aged Brie") {
                    if (item.name != "Backstage passes to a TAFKAL80ETC concert") {
                        if (item.quality > 0) {
                            if (item.name != "Sulfuras, Hand of Ragnaros") {
                                item.quality = item.quality - 1
                            }
                        }
                    } else {
                        item.quality = item.quality - item.quality
                    }
                } else {
                    if (item.quality < 50) {
                        item.quality = item.quality + 1
                    }
                }
            }
        }
        
        
        
       
    }
    
    func updateAgedBrie(){
        let item = self.item
        
            if (item.quality < 50) {
                item.quality = item.quality + 1
            }
            item.sellIn = item.sellIn - 1
    }
}
