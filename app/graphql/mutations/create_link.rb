class Mutations::CreateLink < Mutations::BaseMutation
  argument :link, Types::LinkInputType, required: true

  field :link, Types::LinkType, null: true

  def resolve(**args)
    Resolvers::CreateLink.new(object: object, context: context).resolve(args)
  end
end
