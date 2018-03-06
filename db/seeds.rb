require 'faker'
namespace :pop do
  desc "Populate Products"
  task products: :environment do
    20.times do
      product = Product.create(name: Faker::Coffee.blend_name, price: Faker::Number.decimal(2), descripton: Coffee.notes)
    end
  end
end
