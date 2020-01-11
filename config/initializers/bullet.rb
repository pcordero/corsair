Rails.application.configure do
  if Rails.env.development?
    config.after_initialize do
      Bullet.enable        = true
      Bullet.alert         = true
      Bullet.bullet_logger = true
      Bullet.console       = true
    # Bullet.growl         = true
      Bullet.rails_logger  = true
      Bullet.add_footer    = true
    end  # Settings specified here will take precedence over those in config/application.rb.
  end

  if Rails.env.test?
    config.after_initialize do
      Bullet.enable        = true
      Bullet.bullet_logger = true
      Bullet.raise         = true # raise an error if n+1 query occurs
    end  # Settings specified here will take precedence over those in config/application.rb.
  end
end
