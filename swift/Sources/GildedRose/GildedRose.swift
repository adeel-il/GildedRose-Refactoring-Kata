public class GildedRose {

    var items:[Item]
    
    public init(items:[Item]) {
        self.items = items
    }
    
    public func updateQuality() {
        for i in 0..<items.count {
            let item = items[i]
            let qualityControlledItem = QualityControlledItem(item: item);
            qualityControlledItem.update()
        }
    }
}
