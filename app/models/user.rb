class User < ApplicationRecord
  acts_as_google_authenticated(
    column: :email,
    google_secret_column: :google_secret,
    lookup_token: :id
  )
end
