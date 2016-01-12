require 'rubygems'
require 'geminabox'

Geminabox.data = ENV['GEMINABOX_DATA'] || "/data"
Geminabox.rubygems_proxy = true

raise "USERNAME and PASSWORD have to be set" unless ENV['USERNAME'] && ENV['PASSWORD']

use Rack::Auth::Basic, "GemInAbox" do |username, password|
  ENV['USERNAME'] == username && ENV['PASSWORD'] == password
end

run Geminabox::Server
