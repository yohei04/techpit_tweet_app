require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TweetApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.generators.template_engine = :slim
    config.i18n.default_locale = :ja

    config.generators do |g|
      g.stylesheets false
      g.test_framework false
    end
  end
end
