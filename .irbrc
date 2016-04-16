if defined?(Ponga)
  Picture.class_eval do
    def self.[](url_hash)
      find_by_url_hash(url_hash)
    end
  end

  User.class_eval do
    def self.[](email)
      find_by_email(email)
    end
  end

  P = Picture
  U = User
end

