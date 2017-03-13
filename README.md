# FreezeAll

Do you have these types of code in your code base?

```ruby
FOO = 'FOO'.freeze
BAR = 'BAR'.freeze
FOOBAR = 'FOOBAR'.freeze

FOO_ARR = [FOO, BAR, FOOBAR].freeze

FOOBAR_STATUSES = [
  'FOO'.freeze,
  'BAR'.freeze
].freeze
```

If so, this gem is perfect for you. FreezeAll adds a convenient `freeze_all` 
method to Array and Hash class, and allow you to freeze all objects within the 
Array/Hash and the Array/Hash itself.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'freeze_all'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install freeze_all

## Usage

```ruby
FOO = 'FOO'
BAR = 'BAR'
FOOBAR = 'FOOBAR'

FOO_ARR = [FOO, BAR, FOOBAR].freeze_all

FOOBAR_STATUSES = {
  status_a: 'status_a',
  status_b: 'status_b'
}.freeze_all
```

## Contributing

You can help by doing these. :)

- report issues
- fork this repo, and create your PR.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

