require_relative 'node'

describe Node do

  let(:parent) { Node.new("mom") }
  let(:first_child) { Node.new("son") }
  let(:second_child) { Node.new("daughter") }

  it "has a value" do
    expect(parent.value).to eq("mom")
  end

  it "is instantiated with empty children array" do
    expect(parent.children.empty?).to be true
  end

  it "can add other nodes as children" do
    parent.add_child(first_child)
    parent.add_child(second_child)
    expect(parent.children.length).to eq(2)
    expect(parent.children[0].value).to eq("son")
  end


end
