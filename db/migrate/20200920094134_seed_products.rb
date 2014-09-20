require 'json'

class SeedProducts < ActiveRecord::Migration
  def change
    json_array = data

    json_array.each_with_index do |json_product, index|
      break if index >= 100

      p = Product.new
      p.name = json_product["name"]
      p.short_desc = json_product["shortDescription"]
      p.best_selling_rank = json_product["bestSellingRank"]
      p.thumbnail = json_product["thumbnailImage"]
      p.price = json_product["salePrice"]
      p.manufacturer = json_product["manufacturer"]
      p.url = json_product["url"]
      p.product_type = json_product["type"]
      p.image = json_product["image"]
      p.category = json_product["category"]
      p.free_shipping = !json_product["shipping"].nil?
      p.save
    end
  end

  def data
    file = File.new("#{File.dirname(__FILE__)}/products.json")
    return JSON.parse(File.read(file))
  end
end

