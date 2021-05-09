require_relative 'aged_brie_item'
require_relative 'backstage_pass_item'
require_relative 'sulfuras_item'

class GildedRose
  @items = []

  def initialize
    @items = []
    @items << Item.new("+5 Dexterity Vest", 10, 20)
    @items << AgedBrieItem.new("Aged Brie", 2, 0)
    @items << Item.new("Elixir of the Mongoose", 5, 7)
    @items << SulfurasItem.new("Sulfuras, Hand of Ragnaros", 0, 80)
    @items << BackstagePassItem.new("Backstage passes to a TAFKAL80ETC concert", 15, 20)
    @items << Item.new("Conjured Mana Cake", 3, 6)
  end

  def update_quality
    @items.each(&:daily_update)
  end
end
