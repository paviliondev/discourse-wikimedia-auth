# frozen_string_literal: true

module UsersControllerExtension
  def create
    ## Ensure that username sent by the client is the same as suggester's version of the Wikimedia username
    ## Note that email is ensured by the email validation process

    wikimedia_username = WikimediaUsername.adapt(session[:authentication][:username])

    if wikimedia_username != params[:username]
      return fail_with("login.non_wikimedia_username")
    end

    super
  end
end
