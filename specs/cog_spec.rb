require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../cogs')

class TestCogs < MiniTest::Test

  def setup
    @cog1 = Cog.new(5)
    @cog2 = Cog.new(3)
  end

  def test_cog_points
    assert_equal(5, @cog1.points)
  end

  def test_spin
    assert_equal(15, @cog1.spin(@cog1, @cog2))
  end

  def test_num_of_spins
    # binding.pry
    assert_equal(3, @cog1.num_of_spins(@cog1, @cog2))
  end

end