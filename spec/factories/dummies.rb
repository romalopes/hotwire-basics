FactoryBot.define do
  factory :dummy do
    name { "MyString" }
    age { 1 }
    born_at { "2025-09-23 15:30:32" }
  end
end
# dummmy = FactoryBot.create(:dummy)
# dummy.name == "MyString"
