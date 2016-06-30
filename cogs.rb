class Cog

  attr_reader(:points)

  def initialize(points)
    @points = points
  end

  def spin(cog1, cog2)
    result = cog1.points * cog2.points
    return result
  end

  def multi_spin(cog1, cog2, cog3)
    result = cog1.points * cog2.points * cog3.points
    return result
  end

  def num_of_spins(cog1, cog2)

    total = 0
    total = cog1.spin(cog1, cog2) 
    if total % cog1.points == 0
      result = total / cog1.points
      return result
    end
  end

  def multi_num_of_spins(cog1, cog2, cog3)

    total = 0
    total = cog1.multi_spin(cog1, cog2, cog3) 
    if total % cog1.points == 0
      result = total / cog1.points
      return result
    end
  end

  def lowcomden(cog1, cog2, cog3)
    result = cog1.multi_num_of_spins(cog1, cog2, cog3)
    return result * cog1.points
  end

end