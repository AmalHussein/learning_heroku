[![wdi](http://ga.bling.phillbaker.com/images/shield_imagined_ga_wdi.png)](https://generalassemb.ly/education/web-development-immersive)
# Getting started with Heroku
This is a quick walkthrough of getting an existing local application up to heroku. 

## Things to make sure of before you start:
1. You should have installed the heroku toolbelt and be logged in with your heroku credentials.
2. Your project should be in an existing git repository

## Creating your app:

### Create the app on Heroku
```
heroku create
```
you can also name your heroku app by passing a name to the above command

```
heroku create my_boss_app
```

to ensure that your app was properly created, you can run the comman:

```
heroku open
```
this should open a webpage welcoming you to your new heroku site. 
### Push your up to heroku like you would a github repository
heroku created a git remote path when you created your new app, so now you can push your code up to heroku using git

```
git push heroku master
```

If you open your app again, it will bring you to your root page. 

## Setting up your database:
It is important to note that if your application uses a database, you're going to have to set up the database remotely. Heroku uses pg, so make sure that your application (or at least the production part of it) is configured to use a 'pg' database. You can change the database configureation in your config/database.yml file (if you're using rails), and you should make sure to add the 'pg' gem to your gemfile under the production group. 


heroku has a console attached to it, so you can run most rake commands from the terminal attached to your heroku dyno by prepending the 'heroku run' to the command. In this fashion, we can set up our database by running our migrations on the terminal attached to heroku:

```
heroku run rake db:migrate
```

If you'd like to destroy your remote database, you can do:

```
heroku run rake db:drop
```
but beware, this is your PRODUCTION database. if your site has users, this will destroy all of their information!

There it is: your basic setup for a heroku application. The [heroku docs](https://devcenter.heroku.com/) are exelent, as are many of the docs for the addons you can get through heroku. Explore the addons available; they are extremely useful.