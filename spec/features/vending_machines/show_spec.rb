require 'rails_helper'

RSpec.describe 'When a user visits a vending machine show page', type: :feature do
  before :all do
    @owner = Owner.create(name: "Sam's Snacks")
    @dons  = @owner.machines.create(location: "Don's Mixed Drinks")
    @s_1   = Snack.new(name: "Snickers", price: 3.5)
    @sm_1  = SnackMachine.new(snack: @s1, machine: @dons)
  end
  
  scenario 'they see the location of that machine' do
    visit machine_path(@dons)

    expect(page).to have_content("Don's Mixed Drinks Vending Machine")
  end

  scenario 'they see the names and costs of the snacks' do
    visit machine_path(@dons)

    expect(page).to have_content("Snickers: $3.50")
  end
end
