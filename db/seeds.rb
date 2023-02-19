30.times do
    Item.create(name: Faker::Commerce.product_name)
end
