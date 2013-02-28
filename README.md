# AttrDelegate

Creates attr readers and writers that delegate the call to a givne object

## Installation

Add this line to your application's Gemfile:

    gem 'attr_delegate'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install attr_delegate

## Usage

<pre>

  Class SomeClass
    attr_delegate :foo, to: :@bar

    def initialize(bar)
      @bar = bar
    end

  end

  object = SomeClass.new Struct.new(:foo).new(42)
  object.foo
  object.foo=42

</pre>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
