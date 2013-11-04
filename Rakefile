# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
require './config/environment'
require File.expand_path('../config/application', __FILE__)

PollywogRanchRailsRuby003::Application.load_tasks

namespace :db do 
  task :seed do

    # create ponds

    p1 = Pond.create(
      :name => 'Silver Frost',
      :water_type => 'Glass')

    p2 = Pond.create(
      :name => 'Sunny Meadow',
      :water_type => 'Blue')

    p3 = Pond.create(
      :name => 'Greenwood',
      :water_type => 'Murky')

    # create frogs

    f1 = Frog.create(
      :name => 'Sammy',
      :color => 'Green',
      :pond => Pond.find_by(:name => 'Silver Frost'))

    f2 = Frog.create(
      :name => 'Aaron',
      :color => 'Yellow',
      :pond => Pond.find_by(:name => 'Sunny Meadow'))

    f3 = Frog.create(
      :name => 'Betty',
      :color => 'Brown',
      :pond => Pond.find_by(:name => 'Greenwood'))

    f3 = Frog.create(
      :name => 'Alice',
      :color => 'Blue',
      :pond => Pond.find_by(:name => 'Sunny Meadow'))

    f4 = Frog.create(
      :name => 'Dilbert',
      :color => 'Yellow',
      :pond => Pond.find_by(:name => 'Silver Frost'))

    # create tadpoles

    t1 = Tadpole.create(
      :name => 'Simon',
      :color => 'Green',
      :frog => Frog.find_by(:name => 'Sammy'))

    t2 = Tadpole.create(
      :name => 'Beth',
      :color => 'Yellow',
      :frog => Frog.find_by(:name => 'Aaron'))

     t3 = Tadpole.create(
      :name => 'Brad',
      :color => 'Blue',
      :frog => Frog.find_by(:name => 'Alice'))

     t4 = Tadpole.create(
      :name => 'Lewis',
      :color => 'Yellow',
      :frog => Frog.find_by(:name => 'Dilbert'))

     t5 = Tadpole.create(
      :name => 'Jenn',
      :color => 'Brown',
      :frog => Frog.find_by(:name => 'Betty'))

     t6 = Tadpole.create(
      :name => 'Friendly',
      :color => 'Green',
      :frog => Frog.find_by(:name => 'Sammy'))

     t7 = Tadpole.create(
      :name => 'Jessica',
      :color => 'Brown',
      :frog => Frog.find_by(:name => 'Betty'))

  end
end
