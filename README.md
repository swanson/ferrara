# Ferrara

"Yo Turtle, go gimme a link to that episode."

## Installation

Add this line to your application's Gemfile:

    gem 'ferrara'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ferrara

## Usage

    require 'ferrara'

    Ferrara.fetch("the office", 1, 1)
    => {:netflix=>"http://movi.es/P2m10"}

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
