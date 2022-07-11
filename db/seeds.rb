puts 'Cleaning database...'
Teddy.destroy_all
Category.destroy_all

puts 'Creating categories...'
geek = Category.create!(name: 'geek')
kids = Category.create!(name: 'kids')

puts 'Creating teddies...'
Teddy.create!(price: 0.01, sku: 'original-teddy-bear', name: 'Teddy bear', category: kids, photo_url: 'https://static.toiimg.com/photo/73984735.cmsg')

Teddy.create!(price: 0.01, sku: 'lotter', name: "L'otter", category: geek, photo_url: 'https://images-na.ssl-images-amazon.com/images/I/81V39H87-EL._AC_SX522_.jpg')
Teddy.create!(price: 0.01, sku: 'octocat',   name: 'Octocat -  GitHub',      category: geek, photo_url: 'https://cdn.thenewstack.io/media/2014/11/githubfigurine-1024x539.jpg')
puts 'Finished!'
