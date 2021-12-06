# frozen_string_literal: true

module GuardianWikimediaExtension
  def can_edit_username?(user)
    return false if !is_admin? && SiteSetting.wikimedia_auth_enabled
    super(user)
  end
end
