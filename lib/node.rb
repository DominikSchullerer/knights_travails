# frozen_string_literal: true

# This node represents a field that the knight moved on.
# It is initialized with its coordinates.
# It can store possible moves which point to other nodes.
class Node
  attr_reader :coordinates
  attr_accessor :possible_moves

  def initialize(x_pos, y_pos)
    @x_pos = x_pos
    @y_pos = y_pos
  end
end
