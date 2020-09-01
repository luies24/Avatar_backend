# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

rm = RestClient.get 'https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=${5}?page=${30}'

rm_array = JSON.parse(rm)

rm_array.each do |character|
    Character.create(
        name: character["name"],
        nation: character["affiliation"]
    )
end