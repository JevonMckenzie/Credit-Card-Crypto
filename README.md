# Credit Card Crypto

This repo demenstrates a very common error checking (data integrity) algorithm, and also introduces you to very elementary cryptographic algorithms.

## Requirements

This project is in two parts. One part is about the Luhn algorithm for credit card number validation. The other part uses the basic crypto algorithms we saw in class.

### A. Luhn Algorithm
This is based on an algorithm that is used by financial institutions to check whether a credit card number is valid or not, by checking its last digit (checksum). This is done by using the [Luhn Algorithm](http://en.wikipedia.org/wiki/Luhn_algorithm). 

1. Implemented the file called `luhn_validator.rb`.  It must check a credit card number and return (`true`/`false`) whether the last checksum digit is correct.
2. Implemented the file called `credit_card.rb` :
  - mixin the LuhnValidator
  - initializeed the instance variables
  - created a hash that converts the instance variables in a [JSON](http://en.wikipedia.org/wiki/JSON) string format

Finally, make sure it passes all the tests :

    $ ruby spec/luhn_spec.rb

(run the spec file from the root directory of your solution)

### B. Substitution Ciphers
Implemented two ciphers: the Caeser Cipher and the Permutation Cipher.

- Implemented the `SubstitutionCipher` module in `substitution_cipher.rb`
  - Created encrypt and decrypt methods of both ciphers
    - they all take `document` string and `key` integer
    - they all return a string (encrypted or decrypted)
  - Assumptions made:
    - All `document` characters are printable ASCII (ord 32-126)
    - Caeser cipher: there is not need to 'wrap' values -- just add/subtract the key to encrypt/decrypt
    - Permutation cipher: assume you can replace with any characters values from 0-127 (ord)
  - The decrypt method recreates the original document it is given!

Finally, ensured that it passes all the tests:

      $ ruby spec/crypto_spec.rb


