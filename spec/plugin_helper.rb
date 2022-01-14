# frozen_string_literal: true
## The plugin store is not wiped between each test

if ENV['SIMPLECOV']
  require 'simplecov'

  SimpleCov.start do
    root "plugins/discourse-wikimedia-auth"
    track_files "plugins/discourse-wikimedia-auth/**/*.rb"
    add_filter { |src| src.filename =~ /(\/spec\/|plugin\.rb|gems)/ }
    SimpleCov.minimum_coverage 80
  end
end

require 'rails_helper'
