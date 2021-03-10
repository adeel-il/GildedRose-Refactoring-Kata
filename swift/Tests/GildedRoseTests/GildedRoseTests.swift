@testable import GildedRose
import XCTest

class GildedRoseTests: XCTestCase {

    func testQualityAndSellInForRegularItemDecreasesByOne() {
        let items = [Item(name: "foo", sellIn: 10, quality: 10)]
        let app = GildedRose(items: items);
        app.updateQuality();
        
        XCTAssertEqual(9, app.items[0].sellIn);
        XCTAssertEqual(9, app.items[0].quality);
    }
    
    func testQualityForRegularItemDegradesTwiceAsFast() {
        let items = [Item(name: "foo", sellIn: 0, quality: 10)]
        let app = GildedRose(items: items);
        app.updateQuality()
        XCTAssertEqual(-1, app.items[0].sellIn);
        XCTAssertEqual(8, app.items[0].quality);
    }
    
    func testQualityForRegularItemIsNeverNegative() {
        let items = [Item(name: "foo", sellIn: 10, quality: 0)]
        let app = GildedRose(items: items);
        app.updateQuality()
        XCTAssertEqual(9, app.items[0].sellIn);
        XCTAssertEqual(0, app.items[0].quality);
    }
    
    func testQualityAndInForAgesBrieIncreasesByOne(){
        let items = [Item(name: "Aged Brie", sellIn: 10, quality: 10)]
        let app = GildedRose(items: items);
        
        app.updateQuality();
        XCTAssertEqual(9, app.items[0].sellIn);
        XCTAssertEqual(11, app.items[0].quality);
    }
    
    func testAgedBrieQualityNeverAboveFifty(){
        let items = [Item(name: "Aged Brie", sellIn: 10, quality: 50)]
        let app = GildedRose(items: items);
        
        app.updateQuality();
        XCTAssertEqual(9, app.items[0].sellIn);
        XCTAssertEqual(50, app.items[0].quality);
    }
    
    func testSulfurasDoesNotUpdateQualityOrSellIn(){
        let items = [Item(name: "Sulfuras, Hand of Ragnaros", sellIn: 10, quality: 10)]
        let app = GildedRose(items: items);
        
        app.updateQuality();
        XCTAssertEqual(10, app.items[0].sellIn);
        XCTAssertEqual(10, app.items[0].quality);
    }
    
    func testBackstagePassIncreasesByTwoWithTenDaysRemaining(){
        let items = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 10, quality: 10)]
        let app = GildedRose(items: items);
        
        app.updateQuality();
        XCTAssertEqual(9, app.items[0].sellIn);
        XCTAssertEqual(12, app.items[0].quality);
    }
    
    func testBackStagePassesIncreasesByThreeWithFivesDaysRemaining() {
        let items = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 5, quality: 10)]
        let app = GildedRose(items: items);
        
        app.updateQuality();
        
        XCTAssertEqual(4, app.items[0].sellIn);
        XCTAssertEqual(13, app.items[0].quality);
    }
    
    func testBackStagePassesDropToZeroAfterConcert() {
        let items = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 0, quality: 10)]
        let app = GildedRose(items: items);
        
        app.updateQuality();
        XCTAssertEqual(-1, app.items[0].sellIn);
        XCTAssertEqual(0, app.items[0].quality);
    }
    
    
    func testBackStagePassesDropToZeroDayAfterConcert() {
        let items = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: -1, quality: 10)]
        let app = GildedRose(items: items);
        
        app.updateQuality();
        XCTAssertEqual(-2, app.items[0].sellIn);
        XCTAssertEqual(0, app.items[0].quality);
    }
    
    func testBackStagePassesQualityDoesntExceedFifty() {
        let items = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 8, quality: 49)]
        let app = GildedRose(items: items);
        
        app.updateQuality();
        XCTAssertEqual(7, app.items[0].sellIn);
        XCTAssertEqual(50, app.items[0].quality);
    }

    func testBackstagePassesIncreaseQualityByOneWhenSellInIsEleven(){
        let items = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 11, quality: 10)]
        let app = GildedRose(items: items);
        
        app.updateQuality();
        XCTAssertEqual(10, app.items[0].sellIn);
        XCTAssertEqual(11, app.items[0].quality);
    }
    
    func testBackstagePassesIncreaseQualityByTwoWhenSellInIsSix(){
        let items = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 6, quality: 10)]
        let app = GildedRose(items: items);
        
        app.updateQuality();
        XCTAssertEqual(5, app.items[0].sellIn);
        XCTAssertEqual(12, app.items[0].quality);
    }
    
    func testBackstagePassesIncreaseQualityByThreeWhenSellInIsOne(){
        let items = [Item(name: "Backstage passes to a TAFKAL80ETC concert", sellIn: 1, quality: 10)]
        let app = GildedRose(items: items);
        
        app.updateQuality();
        XCTAssertEqual(0, app.items[0].sellIn);
        XCTAssertEqual(13, app.items[0].quality);
    }
    
    
    
    
    
    
    
    
    
    
}

