$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'active_record'
require 'activerecord-json-streamer'
require 'models/user'
ActiveRecord::Base.establish_connection({:adapter=> "sqlite3", :database => 'spec/db/development.sqlite3'})

RSpec.configure do |config|

end