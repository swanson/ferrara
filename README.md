# Ferrara

![](http://i.imgur.com/CNxNz.png)
> Yo [Turtle](http://en.wikipedia.org/wiki/Turtle_(Entourage\))! Gimme a link to that episode, bro.

Ferrara takes a show name, season number, and episode number and gives you a link to stream the episode.

Currently supports: Netflix, Hulu, and iTunes

## Installation

Add this line to your application's Gemfile:

    gem 'ferrara', :git => 'git@github.com:swanson/ferrara.git'

And then execute:

    $ bundle

## Usage

    require 'ferrara'

    Ferrara.fetch_links("the office", 1, 5)
    => {
          :netflix=>"http://movi.es/P2m11", 
          :hulu=>"http://www.hulu.com/watch/159640", 
          :itunes=>"https://itunes.apple.com/us/tv-season/basketball/id102772946?i=102225097&uo=4"
        }
    
    Ferrara.fetch_links("homeland", 1, 1)
    => {
          :netflix=>nil, 
          :hulu=>nil, 
          :itunes=>"https://itunes.apple.com/us/tv-season/pilot/id544435219?i=546519019&uo=4"
        }

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
