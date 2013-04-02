#require "ruby-oop/version"

module RubyOOP
  NO_REQUIRE ||= false
  Klass = ->(klass){
    lex = {
      methods: {},
      class_methods: {
        new: ->{}
      },
    }.merge(klass)
    kvars = {}

    return ->(source){
      object = {source: source}
      vars = {}
      return ->(name, *as){lex[:methods][name][*[object]+as]}
    }
  }
end

unless RubyOOP::NO_REQUIRE
  Klass = RubyOOP::Klass
end

StringWrapper = Klass[
  name: 'StringWrapper',
  methods: {
    to_s: ->(slf){ slf[:source] }
  },
]

str = StringWrapper["String"]

p str[:to_s]
