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
u3 = User.create(username: 'Ling', password: '123456', email:'chloejin525@gmail.com', avatar: File.open(File.join(Rails.root, '49.jpg')))

p1 = Post.create(author: u1.id, user_id: u1.id, title: 'Lorem ipsum', blog_entry: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam molestie, leo vel varius dictum, sem arcu eleifend libero, eu efficitur metus leo vel neque. Mauris ut massa convallis, gravida turpis nec, faucibus tellus.')
p2 = Post.create(author: u1.id, user_id: u1.id, title: 'Lorem ipsum', blog_entry: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam molestie, leo vel varius dictum, sem arcu eleifend libero, eu efficitur metus leo vel neque. Mauris ut massa convallis, gravida turpis nec, faucibus tellus.')
p3 = Post.create(author: u1.id, user_id: u1.id, title: 'Lorem ipsum', blog_entry: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam molestie, leo vel varius dictum, sem arcu eleifend libero, eu efficitur metus leo vel neque. Mauris ut massa convallis, gravida turpis nec, faucibus tellus.')
p4 = Post.create(author: u2.id, user_id: u2.id, title: 'Lorem ipsum', blog_entry: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam molestie, leo vel varius dictum, sem arcu eleifend libero, eu efficitur metus leo vel neque. Mauris ut massa convallis, gravida turpis nec, faucibus tellus.')
p5 = Post.create(author: u2.id, user_id: u2.id, title: 'Lorem ipsum', blog_entry: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam molestie, leo vel varius dictum, sem arcu eleifend libero, eu efficitur metus leo vel neque. Mauris ut massa convallis, gravida turpis nec, faucibus tellus.')
p6 = Post.create(author: u3.id, user_id: u3.id, title: 'What is Lorem Ipsum?', blog_entry: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')

c1 = Comment.create(author: u1.id, user_id: u1.id, post_id: p1.id, comment_entry: 'Donec et sollicitudin nunc. In arcu nisl, mattis sit amet tincidunt eget, viverra id diam. ')
c2 = Comment.create(author: u1.id, user_id: u1.id, post_id: p1.id, comment_entry: 'Donec et sollicitudin nunc. In arcu nisl, mattis sit amet tincidunt eget, viverra id diam. ')
c3 = Comment.create(author: u2.id, user_id: u2.id, post_id: p2.id, comment_entry: 'Donec et sollicitudin nunc. In arcu nisl, mattis sit amet tincidunt eget, viverra id diam. ')

t1 = Tag.create(name: "nature")
t2 = Tag.create(name: "science")
t3 = Tag.create(name: "tech")

p1.tags << [t1, t2]
p2.tags << [t2]
p3.tags << [t1, t2, t3]
