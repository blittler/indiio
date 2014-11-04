# indi.io

## Raison d'etre

Helping the world stay classy.

## Setup

### Project

`bundle install`

`rake db:create`

`rake db:migrate`

### Paperclip

https://github.com/thoughtbot/paperclip

`rails generate paperclip pin image`

`rake db:migrate`

### production.rb

config.action_mailer.default_url_options = { host: 'HOSTNAME' }

### Heroku

`heroku keys:add`

`heroku create`

`heroku run rake db:migrate`

`heroku config:set AWS_BUCKET=xx AWS_ACCESS_KEY_ID=xx AWS_SECRET_ACCESS_KEY=xx`