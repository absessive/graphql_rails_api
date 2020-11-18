module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :links, [Types::LinkType], null: false, description: 'A list of links'

    def links
      Link.order(created_at: :desc)
    end
  end
end
