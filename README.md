# razorpay-ruby-test-app usiing Sinatra framework

Sample App for Razorpay Ruby Integration using Sinatra framework

#Steps for integration 

## Installation

Add the below line to your Gemfile of the application:

```
gem 'razorpay'
``` 

Execute the following command:
```
$ bundle
```

Alternatively, you can install it by executing the following command:
```
$ gem install razorpay
```

## Initialization

Set up your [KEY_ID] and [KEY_SECRET] using the following command:
```
require "razorpay"
Razorpay.setup('key_id', 'key_secret')
```

## Create an Order
```
order = Razorpay::Order.create amount: 5000, currency: 'INR', receipt: 'TEST'
```
## Fetch Order by ID
```
order = Razorpay::Order.fetch('order_id')
```

## Payment Capture Settings

After a payment is [authorize](https://razorpay.com/docs/payments/payments/) , you need to capture the payment made by the customer for the amount to be settled to your bank account as per the settlement schedule. Payments that are not captured are auto-refunded after a fixed time period.

Auto-capture payments (recommended)

Authorized payments can be automatically captured. You can auto-capture all payments using [global settings](https://razorpay.com/docs/payments/payments/capture-settings/)  on the Razorpay Dashboard.
``` 
Watch Out
Payment capture settings work only you have integrated with Orders API in your server side. Know more about the Orders API.
```
Manually capture payments
Each authorized payment can also be captured individually. You can manually capture payments:

[Payment Capture API](https://razorpay.com/docs/api/payments/#capture-a-payment)

[Razorpay Dashboard](https://razorpay.com/docs/payments/payments/dashboard/)

## Running the application

Run the **_rubysample.rb_** file using ```ruby rubysample.rb``` in the terminal.

The order id will be auto generated. 

Once the payment is done you would recieve the alert of **_payment id, order id and signature_**. 

Store these details in your backend and pass the values to the **_verify.rb_** file and run the ```ruby verify.rb``` in the terminal for signature verification manually. 

