require 'grape'
require 'grape-entity'
require 'grape-swagger'
# requiring this helps to load the parsers
#require 'grape-swagger/entity'

require_relative 'entity.rb'
require_relative 'model.rb'

module API
  class Statuses < Grape::API

    desc 'Get all statuses' do
      # problem is the parsing of this return type
      success ::API::Entities::Status
    end
    get '/statuses' do
      status = ::API::Status.new
      status.user_name = 'Stefan'

      statuses = [status, status, status]
      present statuses, using: ::API::Entities::Status
    end
    
    add_swagger_documentation
  end
end
