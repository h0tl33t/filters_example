# Filters Example

This is a tiny Rails app made to demonstrate how to create your own basic filtering functionality
using [Ransack](https://github.com/activerecord-hackery/ransack), which I cover in this [post](http://viget.com/extend/how-to-build-your-own-filters-with-ransack).  Check it out!

## Notable Files
* [User Controller](https://github.com/h0tl33t/filters_example/blob/master/app/controllers/users_controller.rb) - where the query params are wrapped and applied to our search object
* [User Index View](https://github.com/h0tl33t/filters_example/blob/master/app/views/users/index.html.erb) - where the DIY filter form is

## Running Locally
* `bundle install`
* `cp config/database.yml{.example,}`
* Open 'config/database.yml' in your editor of choice and fill out with your Postgres username +
  password
* Ensure Postgres is started ([how-to](http://www.postgresql.org/docs/9.1/static/server-start.html))
* `bundle exec rake db:create db:migrate`
* `rails s`
