public class GildedRose {

    var items:[Item]
    
    public init(items:[Item]) {
        self.items = items
    }
    
    public func updateQuality() {
        for i in 0..<items.count {
            let item = items[i]
            let qualityControlledItem: QualityControlledItem
            
            switch item.name {
            case "Aged Brie":
                qualityControlledItem = AgedBrie(item: item)
            case "Backstage passes to a TAFKAL80ETC concert":
                qualityControlledItem = BackstagePass(item: item)
            case "Sulfuras, Hand of Ragnaros":
                qualityControlledItem = Sulfuras(item:item)
            case "Conjured":
                    qualityControlledItem = Conjured(item:item)
            default:
                qualityControlledItem = RegularItem(item:item)
            }

            qualityControlledItem.update()
        }
    }
}
