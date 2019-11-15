puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients...'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingreds_serialized = open(url).read
ingreds = JSON.parse(ingreds_serialized)
ingreds["drinks"].each do |pair|
  pair.each do |k, v|
    Ingredient.create!(name: "#{v}")
  end
end

puts 'Finished!'
