require "rails_admin_jsoneditor/engine"

module RailsAdminJsoneditor
end

require 'jsoneditor-rails'
require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class Jsoneditor < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)

          register_instance_option :render do
            bindings[:view].render partial: "rails_admin/main/form_jsoneditor", locals: {field: self, form: bindings[:form]}
          end
          
        end
      end
    end
  end
end
