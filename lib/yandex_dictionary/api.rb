# encoding: UTF-8
require "httparty"

module YandexDictionary

  class API

  	include HTTParty

    base_uri 'https://dictionary.yandex.net/api/v1/dicservice.json'
    @@lang = 'en-en'

    def self.api_key= key
      @@api_key = key
    end

    def self.lang= lang
      @@lang = lang
    end

    # Returns a list of language supported by the server
    def getLangs
      result = self.class.get '/getLangs', { query:{ key:@@api_key } }
      check_result result
    end

    # Searches for words or phrases in the dictionary and returns an automatically generated dictionary entry
    def lookup text
      result = self.class.get '/lookup', { query:{ key:@@api_key, lang:@@lang, text:text } }
      check_result result  
    end

    private

    def check_result result  
      result.code == 200 ? JSON.parse( result.body ) : check_api_errors( result )
    end

    def check_api_errors responce
      case responce.code
        when 401
          ApiError.new('Invalid api key')
        when 402
          ApiError.new('Api key blocked')
        when 403
          ApiError.new('Daily request limit exceeded')
        when 404
          ApiError.new('Daily char limit exceeded')
        when 413
          ApiError.new('Exceeds the maximum size of the text')
        when 501
          ApiError.new('Set direction of transfer is not supported')
        else
          raise ApiError.new('Try again later')
      end
    end

  end

end