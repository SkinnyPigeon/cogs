class Cog

  attr_reader(:points)

  def initialize(points)
    @points = points
    @results = []
  end

  def spin(cog1, cog2)
    result = cog1.points * cog2.points
    return result
  end

  def self.cog_map(cogs)
    @results = cogs.map{ |cog| cog.points}
    return @results
  end

  def product(results)
    final = 1.0
    @results.each { |result| final *= result }
    final
  end
  # def multi_spin(cogs)
    
    
  #   for cog in cogs
  #     cog.points
  #   result = cog1.points * cog2.points * cog3.points
  #   return result
  # end
  # end

  def num_of_spins(cog1, cog2)

    total = cog1.spin(cog1, cog2) 
    if total % cog1.points == 0
      result = total / cog1.points
      return result
    end
  end

  # def multi_num_of_spins(cog1, cog2, cog3)

  #   total = cog1.multi_spin(cog1, cog2, cog3) 
  #   if total % cog1.points == 0
  #     result = total / cog1.points
  #     return result
  #   end
  # end

  # def lowcomden(cog1, cog2, cog3)
  #   result = cog1.multi_num_of_spins(cog1, cog2, cog3)
  #   return result * cog1.points
  # end


  # def multi_num_of_spins(cog1,cogs)

  #   cog_pot = []
  #   cog_pot << cog1

  #   cogs.delete(cog1)

  #   total = cog1.multi_spin(cog_pot) 
  #   if total % cog1.points == 0
  #     result = total / cog1.points
  #     return result
  #   end
  # end














<<<<<<< HEAD

=======
>>>>>>> parent of 13320ea... repairing stuff
end