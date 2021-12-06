# frozen_string_literal: true

module WikimediaUsername
  def self.adapt(username, allowed_username = nil)
    UserNameSuggester.suggest(username&.unicode_normalize, allowed_username)
  end
end
