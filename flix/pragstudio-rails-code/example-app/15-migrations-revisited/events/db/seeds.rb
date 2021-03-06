# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create!([
 {
   name: 'BugSmash',
   location: 'Denver, CO',
   price: 0.00,
   description: "Join us for a fun evening of bug smashing! It's a great way to get involved in open source projects whether you're reporting bugs, fixing bugs, or even inadvertently creating a few bugs!",
   starts_at: 100.days.from_now,
   image_file_name: 'bugsmash.png',
   capacity: 75
 },
 {
   name: 'Hackathon',
   location: 'Austin, TX',
   price: 15.00,
   description: "Got a killer app idea you've been itching to work on? Hunker down at the Hackathon! This is an intense, focused day of hacking on anything you want. The entry fee goes toward a bounty of cash and prizes for winners in a variety of categories.",
   starts_at: 120.days.from_now,
   image_file_name: 'hackathon.png',
   capacity: 100
 },
 {
   name: 'Kata Camp',
   location: 'Dallas, TX',
   price: 75.00,
   description: "Kata Camp is where developers go to practice their craft without the interruptions of a typical project. Forget about having to actually ship something. Tell your manager you're going to Kata Camp for the day! Price includes a buffet lunch and a leather-bound journal to record your kata achievements.",
   starts_at: 150.days.from_now,
   image_file_name: 'katacamp.png',
   capacity: 50
 },
 {
   name: 'Coffee and Code',
   location: 'Stumptown Coffee, Portland, OR',
   price: 0.00,
   starts_at: 10.days.ago,
   description: 'Start your day off right with a good cup of Joe while you sling some code.',
   image_file_name: 'coffeecode.png',
   capacity: 50
 },
 {
   name: 'Cocoa Cook-off',
   location: '1 Infinite Loop, Cupertino, CA',
   price: 25.00,
   starts_at: 20.days.ago,
   description: 'Brew up the best Mac app and win! Entry fee includes a stylish apron.',
   image_file_name: 'cocoacookoff.png',
   capacity: 50
 }
])
