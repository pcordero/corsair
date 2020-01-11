Rails.application.config.hosts << ENV['LOCALHOST'] if ENV['LOCALHOST'].present? unless Rails.env.test?
