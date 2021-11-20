require "razorpay" 
require 'json'


Razorpay.setup('rzp_test_uGY0vXrwuQr9CD', 'luZIdxzKvEvD3DReuVFnb470')

payment_response =
{
        :razorpay_order_id   => "order_INOyop2tdoGBpO",
        :razorpay_payment_id =>  "pay_INP4YqxY7QRnBt",
        :razorpay_signature  => "73ed3b827499dfc62b7d179a27c9ce286bf02d127482e67f1f7e316ce4ba722b"
}
b = Razorpay::Utility.verify_payment_signature(payment_response)

print(b)

