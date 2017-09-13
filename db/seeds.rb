# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Link.exists?
  puts "----> Inserting links from seeds.rb"
	link_data = [
    {
      :title => 'Google',
      :given_url => 'www.google.com'
    },{
      :title => 'Yahoo',
      :given_url => 'www.yahoo.com'
    },{
      :title => 'Github',
      :given_url => 'www.github.com'
    },{
      :title => 'Bitbucket',
      :given_url => 'www.bitbucket.org'
    },{
      :title => 'Facebook',
      :given_url => 'www.facebook.com'
    },{
      :title => 'Twitter',
      :given_url => 'www.twitter.com'
    },{
      :title => 'LinkedIn',
      :given_url => 'www.linkedin.com'
    },{
      :title => 'Angular JS',
      :given_url => 'www.angular.io'
    },{
      :title => 'Ruby on Rails',
      :given_url => 'http://rubyonrails.org'
    },{
      :title => 'Ruby Programming Language',
      :given_url => 'https://www.ruby-lang.org'
    },{
      :title => 'React A JAVASCRIPT LIBRARY FOR BUILDING USER INTERFACES',
      :given_url => 'https://facebook.github.io/react/'
    },{
      :title => 'Tutorials Point',
      :given_url => 'https://www.tutorialspoint.com/'
    },{
      :title => 'Play Framework',
      :given_url => 'https://www.playframework.com/'
    },{
      :title => 'Nginx',
      :given_url => 'https://nginx.org/en/'
    },{
      :title => 'Devise Gem',
      :given_url => 'https://github.com/plataformatec/devise'
    },{
      :title => 'Amazon Web Services',
      :given_url => 'https://aws.amazon.com/'
    },{
      :title => 'Heroku - Cloud Application Platform',
      :given_url => 'https://www.heroku.com/'
    },{
      :title => 'Papertrail',
      :given_url => 'https://papertrailapp.com/'
    },{
      :title => 'Websolr',
      :given_url => 'https://www.websolr.com/'
    },{
      :title => 'RailsCasts',
      :given_url => 'http://railscasts.com/'
    }
  ]

  Link.create(link_data)
end
