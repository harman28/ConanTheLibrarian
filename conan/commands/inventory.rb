module Conan
  module Commands
    class Inventory < SlackRubyBot::Commands::Base
      command 'Inventory' do |client, data, _match|
        client.say(channel: data.channel, text: '0')
      end
    end
  end
end