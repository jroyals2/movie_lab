# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FavoriteMovie.destroy_all
Movie.destroy_all
User.destroy_all


users = []
users2 = []
movies = []
movies2 = []

movies << Movie.generate('tt0117998')
movies << Movie.generate('tt0117571')
movies << Movie.generate('tt0067800')
movies << Movie.generate('tt0050032')
movies2 << Movie.generate('tt0113855')
movies2 << Movie.generate('tt0117500')
movies2 << Movie.generate('tt0286106')
movies2 << Movie.generate('tt0169547')
movies2 << Movie.generate('tt0120338')
movies2 << Movie.generate('tt1314655')

users << User.create(
        email: 'james@james.com',
        password: 'suckit',
        password_confirmation: 'suckit'
    )
users2 << User.create(
        email: 'trey@james.com',
        password: 'suckit',
        password_confirmation: 'suckit'
    )
users.each do |user|
 movies.each do |movie|
    FavoriteMovie.create(
            user_id: user.id,
            movie_id: movie.id
          )
        end
    end
users2.each do |user|
    movies2.each do |movie|
        FavoriteMovie.create(
            user_id: user.id,
            movie_id: movie.id
        )
        end
    end