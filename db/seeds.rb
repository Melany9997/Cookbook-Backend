Bookmark.destroy_all
Recipe.destroy_all
Category.destroy_all
italian = Category.create(name:"Italian")

puts "Creating recipes..."
Recipe.create(name: "Chocolate Cake", description:"Delicious and chocolatey", image_url:"https://sugargeekshow.com/wp-content/uploads/2023/10/easy_chocolate_cake_slice.jpg", rating: 3.5)
Recipe.create(name: "Lentil Bolognese", description: "Lovely vegetarian alternative", image_url:"https://www.twospoons.ca/wp-content/uploads/2020/05/vegan-lentil-bolognese-sauce-recipe-healthy-easy-twospoons-25-scaled.jpg", rating: 5)
Recipe.create(name: "Sweet Potato soup", description: "An Autumnn favourite", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD0Eb9a0ZGhmKvVPxlcJyBdIRGmnBV-tjSeA&s", rating: 3.5)
Recipe.create(name: "Black bean Chilli", description:"A spicy and earthy delight", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSVQ73HYA3YGW9-5t-MUDsXyQUZUTN4jqTkA&s", rating: 5)
Recipe.create(name: "Sweet and Tangy Tofu", description: "Delicious asian flavours", image_url:"https://vegancocotte.com/wp-content/uploads/2021/10/Sweet-and-Sour-Tofu-0.jpg", rating: 5)
Recipe.create(name: "Mushrooms on Toast", description: "A twist on the beans on toast", image_url: "https://evergreenkitchen.ca/wp-content/uploads/2021/10/Mushrooms-on-Toast-0-4X5.jpg", rating: 4.5)
Recipe.create(name: "Tofu and Cauliflower Tacos", description: "A spicy plant alternative", image_url: "https://www.noracooks.com/wp-content/uploads/2024/02/tofu-tacos-5-1200x1800.jpg", rating: 5)
carbonara = Recipe.create(name: "Spaghetti Carbonara", description: "An italian classic", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5L5JUfUco9XK0SWMF9AqjmhIBbRVrAjI0dQ&s", rating: 4.5)
Bookmark.create(comment:"A nice italian dish", recipe: carbonara, category: italian)
puts "done"
