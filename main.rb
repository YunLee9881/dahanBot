# frozen_string_literal: true

require 'discordrb'
require 'dotenv/load'

bot = Discordrb::Bot.new token: ENV['BOT_TOKEN'], client_id: ENV['CLIENT_ID']

bot.message(content: '다한아 뭐해') do |event|
  m = event.respond('니가 뭔데 알려해 나 바빠')
  # m.edit "Pong! time taken: #{Time.now - event.timestamp} seconds."

end

bot.mention do |event|
  event.user.pm('왜 또 뭔데 귀찮게 하지마')
end



bot.run
