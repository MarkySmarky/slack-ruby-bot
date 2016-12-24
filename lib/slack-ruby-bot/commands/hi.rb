module SlackRubyBot
  module Commands
    class Hi < Base
      help do
        title 'hi'
        desc 'says hello.'
      end

      def self.call(client, data, _match)
        client.say(channel: data.channel, text: "Yo <@#{data.user}>!")
      end
    end
  end
end
