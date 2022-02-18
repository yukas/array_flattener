# frozen_string_literal: true

module Flattener
  module_function

  def flatten(array)
    if array.is_a?(Array)
      return array if array.empty?
    else
      return [array]
    end

    flatten(array.first) + flatten(array[1..-1])
  end
end
