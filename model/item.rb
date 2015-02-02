# This class represents a single Item you can purchase in the store.
class Item
  attr_reader :id, :category, :name, :price
  attr_reader :ingredients, :description, :image_file

  def initialize(args)
    @id          = args[:id]
    @category    = args[:category]
    @name        = args[:name]
    # @price       = args[:price]
    @ingredients = args[:ingredients]
    @description = args[:description]
    @image_file  = args[:image_file]
  end

  def to_s
    "ID: #{@id}, Category: #{@category}, Name: #{@name}, " \
    "Ingredients: #{@ingredients}, Description: #{@description}, " \
    "Image File: #{@image_file}"
  end
end
