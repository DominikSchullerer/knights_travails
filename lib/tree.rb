# frozen_string_literal: true

require_relative './node'
require_relative './rules'

# This Tree represents all possible moves of a Knight, given a starting position
class Tree
  attr_reader :start

  def initialize(x_pos, y_pos)
    @start = Node.new(x_pos, y_pos)
  end

  def path_to(x_pos, y_pos)
    depth_search_logic(x_pos, y_pos, [@start])
  end

  private

  def depth_search_logic(x_pos, y_pos, nodes)
    history = search_nodes(x_pos, y_pos, nodes)

    if history.empty?
      build_next_depth(nodes)

      next_nodes = []
      nodes.each do |node|
        node.possible_moves.each do |move|
          next_nodes << move
        end
      end

      history = depth_search_logic(x_pos, y_pos, next_nodes)
    end

    history
  end

  public

  def build_next_depth(nodes = [@start])
    nodes.each do |node|
      possible_moves = Rules.possible_moves(node.x_pos, node.y_pos)

      possible_moves.each do |move|
        node.possible_moves << Node.new(move[0], move[1], node.history.clone)
      end
    end
  end

  def search_nodes(x_pos, y_pos, nodes)
    history = []

    nodes.each do |node|
      history = node.history if x_pos == node.x_pos && y_pos == node.y_pos
    end

    history
  end
end
