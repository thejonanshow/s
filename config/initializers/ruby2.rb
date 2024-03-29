# This is a very important monkey patch to make Rails 2.3.18 to work with Ruby 2.x
# If you're thinking to remove it, really, don't, unless you know what you're doing.
# KTHXBYE

if Rails::VERSION::MAJOR == 2 && RUBY_VERSION >= '2.0.0'
  module ActiveRecord
    module Associations
      class AssociationProxy
        def send(method, *args)
          if proxy_respond_to?(method, true)
            super
          else
            load_target
            @target.send(method, *args)
          end
        end
      end
    end
  end
end
