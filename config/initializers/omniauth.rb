Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  # provider :facebook, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  # provider :google, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end
