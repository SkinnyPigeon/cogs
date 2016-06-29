require('minitest/autorun')
require('minitest/rg')
require_relative('../spin')

class TestCogs < MiniTest::Test

  def setup

  end

  def test_spin
    assert_equal(15, @cog1.spin)
  end

end