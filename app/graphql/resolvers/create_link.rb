module Resolvers
  class CreateLink < GraphQL::Function
    # arguments passed as args
    argument :description, !types.String
    argument :url, !types.String

    # reeturn type from the mutation
    type Types::LinkType

    # the mutation method
    def call(_obj, args, _ctx)
      Link.create!(
        description: args[:description],
        url: args[:url]
      )
    end
  end
end
