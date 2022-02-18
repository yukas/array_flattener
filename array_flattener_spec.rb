# frozen_string_literal: true

require "bundler/setup"

describe "Flattening an array" do
  it "flattens array" do
    expect(flatten([1, [2, [3]], 4])).to eq([1, 2, 3, 4])
  end

  it "flattens empty array" do
    expect(flatten([])).to eq([])
  end

  it "flattens nested empty arrays" do
    expect(flatten([[[]]])).to eq([])
  end

  it "flattens array with nil value" do
    expect(flatten([nil])).to eq([nil])
  end

  it "flattens nested arrays with nil values" do
    expect(flatten([nil, [nil]])).to eq([nil, nil])
  end

  def flatten(array)
    if array.is_a?(Array)
      return array if array.empty?
    else
      return [array]
    end

    flatten(array.first) + flatten(array[1..-1])
  end
end
