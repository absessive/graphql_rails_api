class Types::LinkInputType < Types::BaseInputObject

  graphql_name 'CreateLinkLinkInput'

  argument :url, String, required: true
  argument :description, String, required: true
end
