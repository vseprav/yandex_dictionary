# encoding: UTF-8

require "yandex_dictionary/version"
require "yandex_dictionary/api"
require "yandex_dictionary/api_error"
require 'json'

module YandexDictionary

	def self.set_api_key key
    API.api_key = key
  end

  def self.set_lang lang
    API.lang = lang
  end

  def self.getLangs
    API.new.getLangs
  end

  def self.lookup text
    API.new.lookup text
  end

end
