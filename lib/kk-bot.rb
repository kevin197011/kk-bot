# frozen_string_literal: true

module KkBot
  class Error < StandardError; end
  # Your code goes here...
end

Dir.glob(File.join(File.dirname(__FILE__), 'kk-bot/*.rb')).each do |r|
  require_relative "kk-bot/#{File.basename(r, '.rb')}"
end
