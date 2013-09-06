# YandexDictionary

Library for Yandex Dictionary API | Бібліотека для API Яндекс Словник

## Installation

Add this line to your application's Gemfile:

  gem 'yandex_dictionary'

And then execute:

  $ bundle

Or install it yourself as:

  $ gem install yandex_dictionary

## Usage

First, set your api key:

	YandexDictionary.set_api_key('API_KEY')

Set translation directions

	YandexDictionary.set_lang('ru-uk')

Returns a list of language supported by the server

	YandexandexDictionary.getLangs

Searches for words or phrases in the dictionary and returns an automatically generated dictionary entry

	YandexDictionary.lookup 'list'

Documentation: http://api.yandex.ru/dictionary/doc/dg/concepts/api-overview.xml

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
