rboop - RubyOOP
===============

Object-Oriented Programming for Ruby!!!!11

Installation
-------------

Add this line to your application's Gemfile:

    gem 'ruby-oop'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-oop

Usage
-----

### Define your class

It's *mijisso*.

```ruby
require 'rboop'

Animal = Klass[:new,
  name: 'Animal',
  methods: {
    sounds: ->(this){
      "#{this[:voice] * 2}!!"
    },
  }
]

Dog = Animal[:new,
  name: 'Dog',
  voice: "BowWow",
]
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
