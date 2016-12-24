module SlackRubyBot
  module Commands

    SENTENCES = ['the hermeneutic of narrative authenticity can easily be made compatible with the de-eroticization of metaphoric substitution.',
                 'the phenomenalism of the image may be seen as the discourse of conceptual drift.',
                 'the reintegration of anxiety recapitulates the necessary but perhaps impossible notion of the prison, the hospital, and the school.',
                 'the desacrilization of communicative interaction comes from the (re)formation of desire.',
                 'the desacrilization of the means of production is, and yet is not, the disarticulation of the gendered body.',
                 'the imposition of patriarchal grammar may be regarded as the affirmation of the gendered body.',
                 'the socialization of syntactical certainty may be regarded as the fiction of narrative sequence.',
                 'the formation of millennial hedonism provides a context for the ideology of representational familiarity.',
                 'the idea of autonomous phenomena (re)embodies the renunciation of power.',
                 'the renunciation of narrative authenticity specifies the assertion of pedagogical institutions.',
                 'the expropriation of the anesthesia of forgetting is, in the most fundamental sense, the phenomenalism of the unspoken.',
                 'the emergence of the means of production opens a space for the experience of disinterested observation.',
                 'the appropriation of post-Hegelian criticism recapitulates the reinscription of autonomous phenomena.',
                 'the figuralization of the marginal reinterprets the ideology of the master-slave dialectic.',
                 'the invention of communicative interaction focuses attention on the ideology of post-Jungian analysis.',
                 'the disarticulation of the gaze fosters the hermeneutic of the private.',
                 'the de-eroticization of materiality chronicles the authentication of post-capitalist hegemony.',
                 'the authentication of the gaze gestures toward the epistemology of the Other.',
                 'the (re)formation of materiality reinforces the reinscription of the image.',
                 'the writing of panopticism generates the logic of synesthesia.',
                 'the hermeneutic of a radical alterity focuses attention on the discourse of the natural.',
                 'the representational validity of narrative authenticity provides a context for the marketing of narrative sequence.',
                 'the ideology of semantic drift asks to be read as the marketing of the public sphere.',
                 'the legitimation of the materialist architectonic is conducive to the fiction of post-Foucaultian sexuality.',
                 'the ideology of history as such interrogates the expression of commodified objects.',
                 'the differentiation of the public sphere is homologous with the conceptual logic of (self)referentiality.',
                 'the internal structure of early modern textuality is often found in juxtaposition with, if not in direct opposition to, the hermeneutic of the enigmatic.',
                 'the de-eroticization of the literary canon is symptomatic of the discourse of pedagogical institutions.',
                 'the cooptation of the gendered body is in effect identical to the emergence of post-capitalist hegemony.',
                 'the disarticulation of linguistic transparency is comparable with the ideology of structural identity.',
                 'the reinscription of a radical alterity can be ultimately defined as the fragmentation of the hidden.',
                 'the necessary but perhaps impossible notion of the unnamed may be regarded as the realization of linguistic transparency.',
                 'the ideology of romantic inwardness comes from the linguistic construction of the implied reader.',
                 'the marketing of millennial hedonism is indistinguishable from the de-eroticization of indeterminacy.',
                 'the discourse of the preprofessional fosters the nostalgia for exoticism.',
                 'the hermeneutic of the unspoken is synonymous with the exploitation of empowerment.',
                 'the legitimation of binary opposition is strictly congruent with the conceptual logic of indeterminacy.',
                 'the discourse of materiality reflects the poetics of the gendered body.',
                 'the totalization of narrative authenticity is in effect identical to the representational validity of exoticism.',
                 'the experience of post-Hegelian criticism invests itself in the authentication of the proper-name effect.']

    SENTENCES_PREFIXES = ['you must hear this from me:',
                          'don\'t tell anyone yet but',
                          'listen,',
                          'an old chinese guy once said:',
                          'it just hit me that',
                          'I always say that']

    class Unknown < Base
      match(/^(?<bot>\S*)[\s]*(?<expression>.*)$/)

      def self.call(client, data, _match)
        client.say(channel: data.channel, text: "<@#{data.user}>, #{SENTENCES_PREFIXES.sample} #{SENTENCES.sample}")
      end
    end
  end
end
