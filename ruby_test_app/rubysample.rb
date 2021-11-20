require "razorpay" 
require 'json'
require 'erb'
require 'execjs'
require 'sinatra'
# require_relative 'verify.rb'

# include Verification

Razorpay.setup('rzp_test_uGY0vXrwuQr9CD', 'luZIdxzKvEvD3DReuVFnb470')

options = Razorpay::Order.create amount: 50000, currency: 'INR'

b = JSON.pretty_generate(options)

order_id = JSON.parse(b)["id"]

get '/' do
  redirect ("/order")
end

get '/order' do
   order_id
   redirect ("/payments")
end

get '/payments' do 
erb :payments, :locals => {:order_id =>order_id.to_s}
end
