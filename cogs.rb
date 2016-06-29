class Cog

  attr_reader(:points)

  def initialize(points)
    @points = points
  end

  def spin(cog1, cog2)
    result = cog1.points * cog2.points
    return result
  end

  def num_of_spins(cog1, cog2)
    result = 0
    while cog1.spin(cog1, cog2) % cog1.points != 0 do
      result += 1
    end
    return result
  end


end