require 'order'

if defined? MyRSpec
  RSpec = MyRSpec
end

RSpec.describe Order do
  it "sums the prices of its line items" do
    order = Order.new

    order.add_entry('shoes', price: 111, quantity: 1)
    order.add_entry('socks', price: 222, quantity: 2)

    expect(order.total).to eq(555)
  end
end

RSpec.describe Order do
  context 'with no items' do
    it 'passes this test' do
      expect(true).to eq(true)
    end
  end

  context 'with one item' do
    it 'fails this test' do
      expect(true).to eq(false)
    end
  end

  context 'fkn some other thing' do
    it 'can skip a test' do
      skip 'lol'
      expect(true).to eq(false)
    end
  end
end

RSpec.describe "Using an array as a stack" do
  def build_stack
    []
  end

  before(:example) do
    @stack = build_stack
  end

  it 'is initially empty' do
    expect(@stack).to be_empty
  end

  context "after an item has been pushed" do
    before(:example) do
      @stack.push :item
    end

    it 'allows the pushed item to be popped' do
      expect(@stack.pop).to eq(:item)
    end
  end
end
