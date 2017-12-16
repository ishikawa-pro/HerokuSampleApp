# HerokukSampleApp
This is a sample app for deploying to Container Registroy.
http://ishikawa-pro.hatenablog.com/entry/2017/12/15/120459  

# Usage
## how to deploy to Heroku Container Registroy.  

```  
this repository clone
docker build -t heroku_sample_app .
heroku login
heroku container:login
heroku create
SECRET_BASE_KEY=$(docker run -it --rm -v $(pwd)/HerokuSampleApp/:/usr/src/HerokuSampleApp/ heroku_sample_app bundle exec rake secret
heroku config:add SECRET_KEY_BASE=$SECRET_BASE_KEY
heroku container:push web
heroku addons:create heroku-postgresql:hobby-dev
heroku run rake db:migrate
heroku open /users
```  
## How to build a local development environment
it build using docker and docker-compose.
```
docker-compose up -d  
docker-compose exec web rails db:create
docker-compose exec web rails db:migrate   
```
you can show http://localhost:3000/users
