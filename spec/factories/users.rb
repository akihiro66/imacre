FactoryBot.define do
  factory :user do
    nickname { "matsu" }
    email { "matsu@example.com" }
    password { "00000000" }
    encrypted_password { "00000000" }
  end
end
