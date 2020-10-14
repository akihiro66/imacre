FactoryBot.define do
  factory :user do
    nickname { Faker::Name.name }
    sequence(:email) { |n| "example#{n}@example.com" }
    password { "foobar" }
    password_confirmation { "foobar" }
    introduction { "はじめまして。DIY初心者ですが、頑張ります！" }
  end
end
