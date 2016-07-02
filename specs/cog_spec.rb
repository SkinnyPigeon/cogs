require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../cogs')

class TestCogs < MiniTest::Test

  def setup
    @cog1 = Cog.new(5)
    @cog2 = Cog.new(3)
    @cog3 = Cog.new(7)
    @cog4 = Cog.new(9)

    @cogs=[@cog1, @cog2, @cog3]
  end


  def test_cog_points
    assert_equal(5, @cog1.teeth)
  end

  def test_spin
    assert_equal(15, @cog1.spin(@cog1, @cog2))
  end

  def test_num_of_spins
    assert_equal(35, @cog1.num_of_spins(@cog2, @cogs))
  end


  def test_lowcomden
    assert_equal( 105, @cog1.lowcomden(@cog1, @cogs))
  end

  # def test_big_spin
  #   # binding.pry
  #   # nil
  #   assert_equal(945, @cog1.big_spin(@cogs))
  # end

end














