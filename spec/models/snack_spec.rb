require 'rails_helper'

RSpec.describe Snack, type: :model do
  before :all do
    @snack_1 = Snack.new(name: "Snickers", price: 3.50)
  end
  
  describe "relationships" do
    it {should have_many(:snack_machines)}
    it {should have_many(:machines).through(:snack_machines)}
  end

  it 'exists' do
    expect(@snack_1).to be_a(Snack)
    expect(@snack_1.name).to eq("Snickers")
    expect(@snack_1.price).to eq(3.5)
  end
end
