#require "ruby-oop/version"

module RubyOOP
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

Klass = RubyOOP::Klass

StringWrapper = Klass[
  name: 'StringWrapper',
  methods: {
    to_s: ->(slf){ slf[:source] }
  },
]

str = StringWrapper["String"]

p str[:to_s]
