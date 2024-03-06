require 'rails_helper'

RSpec.describe SnackMachine, type: :model do
it {should belong_to(:machine)}
it {should belong_to(:snack)}
end
