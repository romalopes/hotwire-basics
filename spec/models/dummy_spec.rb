require 'rails_helper'

RSpec.describe Dummy, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "age greater than 21" do
    dummy = FactoryBot.create(:dummy, age: 21)
    expect(dummy.age).to be >= 21
  end
end
