
# frozen_string_literal: true
require 'discordrb'
require 'dotenv/load'

file_path = 'data.json'
file = File.read(file_path)
data = JSON.parse(file)

bot = Discordrb::Bot.new token: ENV['BOT-TOKEN'], client_id: ENV['CLIENT-ID']

bot.message(content: '다한아 뭐해') do |event|
  m = event.respond('니가 뭔데 알려해')
  # m.edit "Pong! time taken: #{Time.now - event.timestamp} seconds."

end

bot.run
