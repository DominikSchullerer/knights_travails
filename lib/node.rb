# frozen_string_literal: true

# This node represents a field that the knight moved on.
# It is initialized with its coordinates.
# It can store possible moves which point to other nodes.
class Node
  attr_reader :x_pos, :y_pos, :history
  attr_accessor :possible_moves

  def initialize(x_pos, y_pos, history = [])
    @x_pos = x_pos
    @y_pos = y_pos
    @history = history
    @history << [x_pos, y_pos]
    @possible_moves = []
  end
end
