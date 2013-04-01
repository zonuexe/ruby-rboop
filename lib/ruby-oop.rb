#require "ruby-oop/version"

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

StringWrapper = Klass[
  name: 'StringWrapper',
  methods: {
    to_s: ->(slf){ slf[:source] }
  },
]

str = StringWrapper["String"]

p str[:to_s]
