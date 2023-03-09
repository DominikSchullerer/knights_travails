# frozen_string_literal: true

# This class handles the game mechanics
class Rules
  def self.possible_moves(x_pos, y_pos)
    possible_steps = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]]
    possible_moves = []

    possible_steps.each do |step|
      x_pos_new = x_pos + step[0]
      y_pos_new = y_pos + step[1]

      possible_moves << [x_pos_new, y_pos_new] if legal_position?(x_pos_new, y_pos_new)
    end

    possible_moves
  end

  def self.legal_position?(x_pos, y_pos)
    legal_position = true

    legal_position = false if x_pos < 1 || x_pos > 8
    legal_position = false if y_pos < 1 || y_pos > 8

    legal_position
  end
end
