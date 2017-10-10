puts 'Seeding 20 books...'

20.times do
  title = Faker::Book.title
  author = Faker::Book.author

  Book.create(title: title, author: author)
end

puts 'Done'
