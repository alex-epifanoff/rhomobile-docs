require 'bundler/setup'
require 'rack/rewrite'

require './version'
require './environment'

use Rack::Rewrite do
	r301  %r{^/home$}, "/en/#{Version::CURR_VERSION}/home"
	r301  %r{^/v/2.2$}, "/en/#{Version::PREV_VERSION}/home"
	r301  %r{^/v/edge$}, "/en/#{Version::NEXT_VERSION}/home"
	r301  %r{^/v/2.2/(.*)/(.*)}, "/en/#{Version::PREV_VERSION}/$1/$2"
	r301  %r{^/v/2.2/(.*)}, "/en/#{Version::PREV_VERSION}/$1"
	r301  %r{^/api/(.*)}, "/en/#{Version::CURR_VERSION}/api/$1"
	r301  %r{^/guide/(.*)}, "/en/#{Version::CURR_VERSION}/guide/$1"
	r301  %r{^/rhoconnect/(.*)}, "/en/#{Version::CURR_VERSION}/rhoconnect/$1"
	r301  %r{^/rhoconnectapi/(.*)}, "/en/#{Version::CURR_VERSION}/rhoconnectapi/$1"
	r301  %r{^/rhoconnectjs/(.*)}, "/en/#{Version::CURR_VERSION}/rhoconnectjs/$1"
	r301  %r{^/tutorial/(.*)}, "/en/#{Version::CURR_VERSION}/tutorial/$1"
	r301  %r{^/$}, "/en/#{Version::CURR_VERSION}/home"
	r301  %r{^/en/latest/(.*)/(.*)}, "/en/#{Version::CURR_VERSION}/$1/$2"
	r301  %r{^/en/latest/(.*)}, "/en/#{Version::CURR_VERSION}/$1"
	r301  %r{^/en/latest$}, "/en/#{Version::CURR_VERSION}/home"
end
run Docs.new