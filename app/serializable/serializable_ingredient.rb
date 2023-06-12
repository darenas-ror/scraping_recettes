class SerializableIngredient < JSONAPI::Serializable::Resource
  type 'ingredients'

  attributes :id, :name, :cover, :measurement
end
