---
language: ruby
tags: sinatra, rails, activerecord, associations, models, views, controllers
---

<img src="http://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Kaulquappen_Tadpole_3.JPG/640px-Kaulquappen_Tadpole_3.JPG">

# Pollywog Ranch

## Goal

Help Frog Rancher Darryl categorize and track all the ponds, frogs, and tadpoles on his ranch. To do this you will use the half completed Sinatra application code and fill in the missing ActiveRecord associations and controller actions needed to form working relationships between the models. Then, given new requirements from Darryl you will refactor this application from a Sinatra application into a Rails application in part 2.

## Instructions

Note: If you come across any issues with the source code in this lab or wish to suggest changes to the instructions submit these comments as Github issues on the original flatiron-school repo: [https://github.com/flatiron-school/pollywog-ranch-associations-ruby-003](https://github.com/flatiron-school/pollywog-ranch-associations-ruby-003)

# Part 1 - Associations

1. Fork the Repo at: [https://github.com/flatiron-school/pollywog-ranch-associations-ruby-003](https://github.com/flatiron-school/pollywog-ranch-associations-ruby-003)
2. Clone your personal fork
3. run the following setup commands:
  - `bundle install`
  - `rake db:migrate`
  - `rake db:seed`
  - `rake server`
4. Open at [http://localhost:9292](http://localhost:9292)

After speaking with Darryl he has informed us that he has several ponds on his ranch. Each pond has different frogs that live there. Some of those frogs have tadpole babies. The frogs all have the ability to have tadpoles at any given time and the tadpoles have the ability to evolve into frogs at any time. 

Given these requirements. Fill in the models in the `/app/models` directory to have the appropriate ActiveRecord Associations necessary.

Within the controller at: `/app/controllers/application_controller.rb` for each route listed fill in the code necessary for each to do their job.

If you get stuck refer to [Sinatra Documentation](http://www.sinatrarb.com/) or take a look at the included solution branch with completed code.

When your done with part 1 push your code up to your remote repo on master branch.

# Part 2 - Rails

Darryl really likes our Sinatra Application, but after a second meeting it has become clear that in the near future Darryl wants to add many new features and may even market the app to frog biologists. To handle up scaling this application let's take our current Sinatra application and build it into a Rails app instead.

You can refer to this link as a quick reference for the Rails 4 folder structure along the way: [http://www.tutorialspoint.com/ruby-on-rails/rails-directory-structure.htm](http://www.tutorialspoint.com/ruby-on-rails/rails-directory-structure.htm)

Let's get started,

1. Generate a new rails app called `pollywog-ranch-rails-ruby-003`
2. cd into this directory and initialize it as a git repo.
3. Create a remote repo on your personal Github.com account with the same name and add it as a remote on your local repo.
4. Generate migrations that use the same naming conventions as your Sinatra app. (Whoa Cowboy, don't run the migrations just yet!)
5. Copy over the migration code for def up and def down into the migration files over in your Rails app as needed. (Still don't run migrations. Our models are not in place yet.)
6. Generate any models neccesary to match the naming conventions and functionality we have in our sinatra app.
7. Copy and paste your model's code from your Sinatra app into the appropriate model files in your Rails app.
8. Copy your seed task from `RakeFile` in your Sinatra app into the `Rakefile` in your Rails app.
9. Run `rake db:migrate` to run your migrations
10. Run `rake db:seed` to seed the database.
11. Generate any controllers neccesary to match the naming conventions and functionality we have in our sinatra app.
12. Copy over the code logic from Sinatra `/app/controllers/application_controller.rb` into the appropriate Rails controller. Remember, although our Sinatra app had only one controller, our Rails app will have separate controllers for each resource.

For example: 

In Sinatra file: `/app/controllers/application_controller.rb`

```
get '/frogs'  do
  @frogs = Frog.all
  erb :'frogs/index'
end
```

Becomes this in Rails,

in file: `/config/routes.rb`
Sinatra's get '/frogs' do is handled within:

```
get '/frogs' => 'frogs#index'
```
As a reference for Rails routes refer to: [http://api.rubyonrails.org/classes/ActionDispatch/Routing.html](http://api.rubyonrails.org/classes/ActionDispatch/Routing.html)


and in file: `/app/controllers/frogs_controller.rb`

```
def index
  @frogs = Frogs.all

  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @frogs }
  end
end 
```

13. Copy and paste your ERB template views from your Sinatra app into the correct views in your Rails app. Do not forget to change the rails view files from `your_file.erb` (Sinatra style) to `your_file.html.erb` (Rails style)

14. Make use of Rails helpers such as `<%= link_to %>` to replace the static html links we had in our Sinatra app `<a href=""></a>`. Also change out any other tags with Rails helpers, such as form helpers etc.

Here are some helper refrences:

Link Helpers: [http://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to](http://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to)

Form Helpers: [http://guides.rubyonrails.org/form_helpers.html](http://guides.rubyonrails.org/form_helpers.html)

When your finished push your code up to your remote repo on master branch. Then post a link to your repos (both your Sinatra app repo and your Rails app repo) on Piazza as a comment for this HW posting.
