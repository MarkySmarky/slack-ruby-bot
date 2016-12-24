module SlackRubyBot
  module Commands
    class Default < Base
      command '@cooper about'
      match(/^(?<bot>[[:alnum:][:punct:]@<>]*)$/u)

      def self.call(client, data, _match)
        client.say(channel: data.channel, text: SlackRubyBot::ABOUT, gif: 'selfie')
      end
    end
  end
end
