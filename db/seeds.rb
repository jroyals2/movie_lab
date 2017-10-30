# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all

Movie.generate('tt0117998')
Movie.generate('tt0117571')
Movie.generate('tt0067800')
Movie.generate('tt0050032')
Movie.generate('tt0113855')
Movie.generate('tt0117500')
Movie.generate('tt0286106')
Movie.generate('tt0169547')
Movie.generate('tt0120338')
Movie.generate('tt1314655')