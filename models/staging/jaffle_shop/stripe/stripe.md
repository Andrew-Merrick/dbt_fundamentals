{% docs payment_method %}

One of the following values:

| payment_method     | definition                                      |
|--------------------|-------------------------------------------------|
| credit_card        | Customer used a credit card to fund the order   |
| coupon             | Customer really likes coupons                   |
| bank_transfer      | Customer used a bank transfer to fund the order |
| gift_card          | Customer used a gift card to fund the order     |

{% enddocs %}

{% docs payment_status %}

One of the following values:

| status  | definition                                      |
|---------|-------------------------------------------------|
| success | The transaction was successful                  |
| fail    | The transaction failed and no jaffle was issued |

{% enddocs %}