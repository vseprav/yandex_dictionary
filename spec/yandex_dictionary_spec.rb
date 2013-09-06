require 'spec_helper'

describe YandexDictionary do

  before do
    YandexDictionary.set_api_key('dict.1.1.20130905T115305Z.141ee09c57e5a581.4aad38ae060933072e798883fdeaa02780548d3f')
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
    YandexDictionary.set_lang 'en-de'
    responce = YandexDictionary.lookup 'like'
    responce['def'][0]['tr'][0]['text'].should == 'wie'
  end

end