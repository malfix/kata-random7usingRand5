require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'n throws' do
    dice = Exercise.new
    throws = {}
    1.upto(7000) do |throw|
      roll = dice.rand7
      throws[roll] = ( throws[roll] || 0 ) + 1
    end
    throws.each do |value, hit|
      puts "#{value} -> #{hit}"
      assert_true hit < 1100 && hit > 900, "about 1000 expected, actual: #{hit}"
    end
  end
end
