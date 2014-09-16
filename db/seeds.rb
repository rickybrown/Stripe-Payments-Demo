user = User.find_or_create_by(email: 'user@demo.com') do |user|
    user.password = 'password'
    user.password_confirmation = 'password'
end
puts "user: #{user.email}"

pricetags = Pricetag.create([
  { amount: '5000', description: 'Price: $50' },
  { amount: '10000', description: 'Price: $100' },
  { amount: '20000', description: 'Price: $200' },
])
pricetags.each do |pricetag|
  puts "pricetag: #{pricetag.description} (#{pricetag.amount} cents)"
end