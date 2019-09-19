#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

get '/' do
	@products = Product.all
	erb :index			
end

get '/about' do
	erb :about			
end

post '/cart' do
	# получаем список параметорв
	@orders_input = params[:orders]
	
	# разбиваем/парсим список
	@items = parse_orders_input(@orders_input)

	# выводим сообщение о том что корзина пуста
	if @items.length == 0
		return erb :cart_is_empty
	end

	# выводим список продуктов в корзине
	@items.each do |item|
	# item у нас [id, cnt] поэтому
	# берем id по нему ищем и замещаем item[0]
		item[0] = Product.find(item[0])
	end

	# возвращаем представление по-умолчанию
	erb :cart
end

def parse_orders_input orders_input

    s1 = orders_input.split(/, /)

    arr = []

    s1.each do |i|
        s2 = i.split(/=/)
        s3 = s2[0].split(/_/)
    
        id, cnt = s3[1], s2[1]
        sub_arr = [id, cnt]
        arr.push sub_arr
    end
    
    return arr
end

post '/place_order' do
	into_db = Order.new params[:order]
	into_db.save

	erb :order_placed
end

get '/all_orders' do
	@all_orders = Order.order 'id DESC'
	erb :all_orders
end