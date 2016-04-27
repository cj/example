require 'bundler'
Bundler.setup :default, ENV['RACK_ENV']

require 'roda'
require 'opal'
require 'opal-jquery'
require 'opal-connect'

Opal.append_path Dir.pwd

Opal::Connect.setup do
  options[:plugins_path] = 'plugins'
  options[:plugins]      = [ :server, :html, :dom, :events, :scope ]

  options[:hot_reload] = {
    host: 'http://local.sh',
    port: 8080,
  }
end

class App < Roda
  route do |r|
    r.root do
      Components::Example.scope(self).render :display
    end
  end
end

require_relative 'components/example'
