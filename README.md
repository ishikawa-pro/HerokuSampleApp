# HerokukSampleApp
This is a sample app for deploying to Container Registroy.
http://ishikawa-pro.hatenablog.com/entry/2017/12/15/120459  

# Usage
## how to deploy to Heroku Container Registroy.  

1. this repository clone
2. docker build -t heroku_sample_app .
3. heroku login
4. heroku container:login
5. heroku create
6. SECRET_BASE_KEY=$(docker run -it --rm -v $(pwd)/HerokuSampleApp/:/usr/src/HerokuSampleApp/ heroku_sample_app bundle exec rake secret
7. heroku config:add SECRET_KEY_BASE=$SECRET_BASE_KEY
8. heroku container:push web
9. heroku addons:create heroku-postgresql:hobby-dev
10. heroku run rake db:migrate
11. heroku open /users  

## How to build a local development environment
it build using docker and docker-compose.
1. docker-compose up -d  
2. docker-compose exec web rails db:create
3. docker-compose exec web rails db:migrate   

you can show http://localhost:3000/users
