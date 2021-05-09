class Item

  attr_accessor :name, :sell_in, :quality
        
  def initialize (name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def daily_update
    update_quality
    update_sell_in
  end

  def update_sell_in
    @sell_in -= 1
  end

  def update_quality
    @quality -= 1
    @quality -= 1 if expired?
    @quality = [0, @quality].max
  end

  private

  def expired?
    @sell_in <= 0
  end

end
