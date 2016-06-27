require 'rubygems'
require 'geminabox'

Geminabox.data = '/opt/geminabox/data'
Geminabox.build_legacy = ENV['BUILD_LEGACY'] && ENV['BUILD_LEGACY'].downcase.strip == 'true'

use Rack::Auth::Basic, "GemInAbox" do |username, password|
  'super secret password' == password
end

run Geminabox::Server
