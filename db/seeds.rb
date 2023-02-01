# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv' 

csv_text = File.read(Rails.root.join('lib','seeds','csv-data.csv'))
csv =CSV.parse(csv_text, :headers=>true)

csv.each do |row|
    t=InstagramMedium.new
    t.like_count =row['like_count']
    t.comments_count = row['comments_count']
    t.media_type=row['media_type']
    t.media_url = row['media_url']
    t.id_media = row['id']
    t.timestamp=row['timestamp']
    t.save
end