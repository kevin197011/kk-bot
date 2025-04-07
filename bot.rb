# frozen_string_literal: true

require 'slack-ruby-bot'
require 'dotenv'
Dotenv.load

class MyBot < SlackRubyBot::Bot
  command 'hello' do |client, data, _match|
    client.say(channel: data.channel, text: "Hello <@#{data.user}>!")
  end

  command 'ping' do |client, data, _match|
    client.say(channel: data.channel, text: 'Pong!')
  end
end

SlackRubyBot::Client.logger.level = Logger::WARN
MyBot.run
