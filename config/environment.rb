require 'bundler'
# require 'sms'
# require 'binance'
# require 'rest-client'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
