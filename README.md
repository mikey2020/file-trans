# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
   ## ruby 2.5.1p57 (2018-03-29 revision 63029)

* System dependencies
 - Make sure you have a GCP account and credentials

* Configuration
  - git clone `https://github.com/mikey2020/file-trans`
  - cd file-trans
  - create .env file 
  - bundle install
  - create a folder config/secrets
  - copy your GCS credentials to config/secrets/file-trans.json file
  - create a new file cors.json for CORS

* Database creation
   - rails db:create 

* Database initialization
   - rails db:migrate
