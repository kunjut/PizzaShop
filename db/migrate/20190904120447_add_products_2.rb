class AddProducts2 < ActiveRecord::Migration[5.2]
  def change
    Product.create(
      :title => 'Hawaiian 2', 
      :description => 'This is Hawaiian pizza', 
      :price => 350, 
      :size => 30, 
      :is_spicy => false, 
      :is_veg => false, 
      :is_best_offer => false, 
      :path_to_image => '/images/02.png')

    Product.create(
      :title => 'Pepperoni 2',
      :description => 'Nice Pepperoni pizza',
      :price => 450, 
      :size => 30, 
      :is_spicy => false, 
      :is_veg => false,
      :is_best_offer => true, 
      :path_to_image => '/images/03.png')

    Product.create(
      :title => 'Vagetarian 2', 
      :description => 'Amazing Vagetarian pizza', 
      :price => 400, 
      :size => 30, 
      :is_spicy => false, 
      :is_veg => false,
      :is_best_offer => false, 
      :path_to_image => '/images/01.png')
    Product.create(
        :title => 'Hawaiian 3', 
        :description => 'This is Hawaiian pizza', 
        :price => 350, 
        :size => 30, 
        :is_spicy => false, 
        :is_veg => false, 
        :is_best_offer => false, 
        :path_to_image => '/images/03.png')
  
    Product.create(
        :title => 'Pepperoni 3',
        :description => 'Nice Pepperoni pizza',
        :price => 450, 
        :size => 30, 
        :is_spicy => false, 
        :is_veg => false,
        :is_best_offer => true, 
        :path_to_image => '/images/01.png')
  
    Product.create(
        :title => 'Vagetarian 3', 
        :description => 'Amazing Vagetarian pizza', 
        :price => 400, 
        :size => 30, 
        :is_spicy => false, 
        :is_veg => false,
        :is_best_offer => false, 
        :path_to_image => '/images/02.png')
  end
end
