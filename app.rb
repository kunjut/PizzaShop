#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base
end

get '/' do
	@products = Product.all
	erb :index			
end

get '/about' do
	erb :about			
end

post '/cart' do
	orders_input = params[:orders]
	@orders = parse_orders_input(orders_input)
	erb "#{@orders.inspect}"
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