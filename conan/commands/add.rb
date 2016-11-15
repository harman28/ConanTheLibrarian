module Conan
  module Commands
    class Add < SlackRubyBot::Commands::Base

      COMMAND = 'add'

      command 'Add' do |client, data, _match|
        info = parse_add_text data
        book = Book.create info
        client.say(channel: data.channel, text: "<@#{data.user}> added #{title} by #{author} to the library")
      end


      def self.parse_add_text data
      	text = data.text
      	title, author = text.downcase[10..-1].split(/ by | - /).map(&:strip).reject(&:empty?)
      	info = {title: title, author: author}
      end
    end
  end
end