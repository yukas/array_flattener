# frozen_string_literal: true

require_relative "./flattener"

describe Flattener do
  it "flattens array" do
    expect(Flattener.flatten([1, [2, [3]], 4])).to eq([1, 2, 3, 4])
  end

  it "flattens empty array" do
    expect(Flattener.flatten([])).to eq([])
  end

  it "flattens nested empty arrays" do
    expect(Flattener.flatten([[[]]])).to eq([])
  end

  it "flattens array with nil value" do
    expect(Flattener.flatten([nil])).to eq([nil])
  end

  it "flattens nested arrays with nil values" do
    expect(Flattener.flatten([nil, [nil]])).to eq([nil, nil])
  end
end
