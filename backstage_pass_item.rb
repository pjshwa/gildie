require_relative 'item.rb'

class BackstagePassItem < Item

  def update_quality
    if expired?
      @quality = 0
      return
    end

    @quality += 1
    @quality += 1 if @sell_in <= 10
    @quality += 1 if @sell_in <= 5
    @quality = [50, @quality].min
  end

end
