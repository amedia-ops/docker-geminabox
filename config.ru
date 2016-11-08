require 'rubygems'
require 'geminabox'

Geminabox.data = ENV['GEMINABOX_DATA'] || "/data"
Geminabox.rubygems_proxy = true

# We handle basic auth in varnish
#raise "USERNAME and PASSWORD have to be set" unless ENV['USERNAME'] && ENV['PASSWORD']

#use Rack::Auth::Basic, "GemInAbox" do |username, password|
#  ENV['USERNAME'] == username && ENV['PASSWORD'] == password
#end

run Geminabox::Server
