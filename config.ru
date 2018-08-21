# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
require 'json'
require 'sidekiq'
require 'sidekiq/prometheus/exporter'

Sidekiq.configure_client do |config|
  config.redis = {url: JSON.parse(ENV["VCAP_SERVICES"] || "{}").dig("redis", 0, "credentials", "uri")}
end

run Sidekiq::Prometheus::Exporter.to_app
