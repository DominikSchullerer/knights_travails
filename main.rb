# frozen_string_literal: true

require_relative './lib/tree'
x_start = 3
y_start = 4

(1..8).each do |x|
  (1..8).each do |y|
    print "#{Tree.new(x_start, y_start).path_to(x, y)}\n"
  end
end
