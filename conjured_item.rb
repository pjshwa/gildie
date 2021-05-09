require_relative 'item.rb'

class ConjuredItem < Item

  def update_quality
    @quality -= 2
    @quality -= 2 if expired?
    @quality = [0, @quality].max
  end

end
