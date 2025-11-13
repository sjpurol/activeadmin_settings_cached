# frozen_string_literal: true

require 'rails-settings-cached'
require 'active_admin'

module ActiveadminSettingsCached
  class Engine < Rails::Engine
    config.mount_at = '/'
    config.autoload_paths << File.expand_path("../lib/activeadmin_settings_cached", __FILE__)
    config.autoload_paths << File.expand_path("../lib/generators", __FILE__)

    initializer 'activeadmin_settings_cached' do
      ::ActiveAdmin::DSL.send(:include, ::ActiveadminSettingsCached::DSL)
    end
  end
end
