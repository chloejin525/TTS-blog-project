# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seed the user with test.jpg 
u1 = User.create(username: 'a', password: '123456', email:'xxx@xxx.com', avatar: File.open(File.join(Rails.root, 'test.jpg')))
u2 = User.create(username: 'b', password: '123456', email:'yyy@yyy.com', avatar: File.open(File.join(Rails.root, 'test.jpg')))

p1 = Post.create(author: u1.id, user_id: u1.id, title: 'Lorem ipsum', blog_entry: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam molestie, leo vel varius dictum, sem arcu eleifend libero, eu efficitur metus leo vel neque. Mauris ut massa convallis, gravida turpis nec, faucibus tellus.')
p2 = Post.create(author: u1.id, user_id: u1.id, title: 'Lorem ipsum', blog_entry: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam molestie, leo vel varius dictum, sem arcu eleifend libero, eu efficitur metus leo vel neque. Mauris ut massa convallis, gravida turpis nec, faucibus tellus.')
p3 = Post.create(author: u1.id, user_id: u1.id, title: 'Lorem ipsum', blog_entry: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam molestie, leo vel varius dictum, sem arcu eleifend libero, eu efficitur metus leo vel neque. Mauris ut massa convallis, gravida turpis nec, faucibus tellus.')
p4 = Post.create(author: u2.id, user_id: u2.id, title: 'Lorem ipsum', blog_entry: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam molestie, leo vel varius dictum, sem arcu eleifend libero, eu efficitur metus leo vel neque. Mauris ut massa convallis, gravida turpis nec, faucibus tellus.')
p5 = Post.create(author: u2.id, user_id: u2.id, title: 'Lorem ipsum', blog_entry: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam molestie, leo vel varius dictum, sem arcu eleifend libero, eu efficitur metus leo vel neque. Mauris ut massa convallis, gravida turpis nec, faucibus tellus.')

c1 = Comment.create(author: u1.id, user_id: u1.id, post_id: p1.id, comment_entry: 'Donec et sollicitudin nunc. In arcu nisl, mattis sit amet tincidunt eget, viverra id diam. ')
c2 = Comment.create(author: u1.id, user_id: u1.id, post_id: p1.id, comment_entry: 'Donec et sollicitudin nunc. In arcu nisl, mattis sit amet tincidunt eget, viverra id diam. ')
c3 = Comment.create(author: u2.id, user_id: u2.id, post_id: p2.id, comment_entry: 'Donec et sollicitudin nunc. In arcu nisl, mattis sit amet tincidunt eget, viverra id diam. ')