require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib', __FILE__)
require 'scrapper'

MyClass.new.perform
session = GoogleDrive::Session.from_config('config.json')
