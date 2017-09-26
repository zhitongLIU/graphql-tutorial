Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :allLinks, !types[Types::LinkType] do
    description "Return all link"
    resolve ->(obj, args, ctx) { Link.all }
  end
end
