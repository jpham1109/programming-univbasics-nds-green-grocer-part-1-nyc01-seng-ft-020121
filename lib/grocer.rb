require 'pry'
def find_item_by_name_in_collection(name, collection)
  result = nil 
  collection.each do |item|
    item.each do |k, v|
      if name == item[k]
        result = item 
      end 
    end 
  end 
  result
end

def consolidate_cart(cart)
  result = []
  index = 0 
  while index < cart.length do 
    item = cart[index]
    if find_item_by_name_in_collection(item[:item], result) == nil
      item[:count] = 1 
      result << item 
    else 
      item[:count] += 1 
    end 
    index += 1
  end 
  result 
  #binding.pry
end 


  