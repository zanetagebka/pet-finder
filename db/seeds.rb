%w[admin shelter_owner user guest].each do |name|
  Role.find_or_create_by name: name
end

# Create admin User
admin_user = User.first_or_create(first_name: 'admin', last_name: 'user', email: 'admin@example.com', password: 'adminadmin')
admin_user.roles << Role.find_by(name: 'admin')
admin_user.save!

# Create template pet
pet = Pet.first_or_create(name: 'Fluffy', age: '2', description: 'Fluffy the cat', gender: 1, breed: 'cat', is_taken: false)
pet.tag_list = 'lazy, lovely'
pet.save!
