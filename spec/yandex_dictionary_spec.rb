# encoding: UTF-8
require 'spec_helper'

describe YandexDictionary do

  before do
    YandexDictionary.set_api_key(ENV['API_KEY'])
  end

  it "shoud return a list of language supported by the server" do
    responce = YandexDictionary.getLangs
    responce.include?('en-en').should == true
  end

  it "shoud return words or phrases" do
    responce = YandexDictionary.lookup 'list'
    responce['def'][0]['text'].should == 'list'
  end

  it "shoud set translation directions" do
    YandexDictionary.set_lang 'ru-uk'
    responce = YandexDictionary.lookup 'лето'
    responce['def'][0]['tr'][0]['text'].should == 'літо'
  end

end