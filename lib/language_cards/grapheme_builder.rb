require 'language_cards/models/grapheme'

module LanguageCards
  module GraphemeBuilder
    # Hash {translation => grapheme}
    def self.call(translation_graphemes = {})
      translation_graphemes.each_with_object([]) do |(key, value), memo|
        memo << Grapheme.new(value, key)
      end
    end
  end
end