module SubstitutionCipher
  module Caeser
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String

    def self.encrypt(document, key)
      # TODO: encrypt string using caeser cipher

      document = document.to_s
      encrypt = document.chars.map{ |c|
              (c.ord + key).chr }.join
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String

    def self.decrypt(document, key)
      # TODO: decrypt string using caeser cipher

      document = document.to_s
      decrypt = document.chars.map{ |c|
            (c.ord - key).chr }.join
    end
  end

  module Permutation
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using caeser cipher
      document = document.to_s
      rand1 = Random.new(key)

      document.chars.map{ |x| x = rand1.rand(128) }.join
      encrypt = document.chars.map{ |c|
              (c.ord + key).chr }.join
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using caeser cipher
      document = document.to_s
      rand1 = Random.new(key)

      document.chars.map{ |x| x = rand1.rand(128)}.join
      decrypt = document.chars.map{ |c|
              (c.ord - key).chr }.join
    end
  end
end
