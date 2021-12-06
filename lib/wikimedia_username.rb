# frozen_string_literal: true

module WikimediaUsername
  def self.adapt(username)
    UserNameSuggester.suggest(username&.unicode_normalize)
  end
end
