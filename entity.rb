module API
  module Entities
    class Status < Grape::Entity
      expose :user_name
    end
  end
end
