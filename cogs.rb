class Cog

  attr_reader(:teeth)

  def initialize(teeth)
    @teeth = teeth
  end

  def spin(cog1, cog2)
    result = cog1.teeth * cog2.teeth
    return result
  end

  def num_of_spins(cog1, cogs)
    total = cog1.big_spin( cogs ) 
    if total % cog1.teeth == 0
      result = total / cog1.teeth
      return result
    end
  end

  def lowcomden( cog1 ,cogs )
    result = cog1.big_spin( cogs )
    return result
  end

  def big_spin( cogs )
    total = 1
    for cog in cogs do
      result = cog.teeth
      total *= result
    end
    return total
  end

end













