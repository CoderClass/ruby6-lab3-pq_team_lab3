require 'rails_helper'

RSpec.describe Product, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe ".alphabetical" do
  	it "return [] when there are no products" do
  		expect(Product.alphabetical.to_a).to eq []
  	end

  	it "return [a] when there is only one product a" do
  		a = Product.create!(name:'a')
  		expect(Product.all).to eq [a]
  	end

  	it "return [a, b, c] after I create 3 products c, b, a" do
  		c = Product.create!(name:'c')
  		b = Product.create!(name:'b')
  		a = Product.create!(name:'a')
  		expect(Product.alphabetical.to_a).to eq [a, b, c]
  	end
  end
end
