FactoryBot.define do
  factory :employee do
    name { FFaker::Name.name }
    email { FFaker::Internet.email }
    age { FFaker::Number.number + 18 }
    street { FFaker::AddressBR.street_name }
    house_number { FFaker::AddressBR.building_number }
    neighborhood { FFaker::AddressBR.neighborhood }
    city { FFaker::AddressBR.city }
    state { FFaker::AddressBR.state_abbr }
  end
end
