
module Resolvers
  class CreateLink < Resolvers::Base
    def resolve(**args)
       arguments = args[:link].to_h
       link = Link.create! arguments
    end
  end
end
