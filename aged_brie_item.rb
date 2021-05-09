require_relative 'item.rb'

class AgedBrieItem < Item

  def update_quality
    @quality += 1
    @quality += 1 if expired?
    @quality = [50, @quality].min
  end

end
