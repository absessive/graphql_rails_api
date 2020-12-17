module Types
  class MutationType < Types::BaseObject    
    field :create_link, mutation: Mutations::CreateLink, null: false, description: "Create a new Link"
  end
end
