# frozen_string_literal: true

require_relative './node'
require_relative './rules'

# This Tree represents all possible moves of a Knight, given a starting position
class Tree
  def initialize(x_pos, y_pos)
    @start = Node.new(x_pos, y_pos)
  end
end
