# Activerecord::JsonStreamer

Adds support for streaming huge json data of activerecord models.
It doesn't loads all of your objects instantly, but do it in batches and writes each object's json data to stream one by one.

## Installation

Add this line to your application's Gemfile:

    gem 'activerecord-json-streamer', :git => 'git://github.com/unloved/activerecord-json-streamer.git'

And then execute:

    $ bundle

## Usage


stream = StringIO.new

User.to_json_stream(stream)

or with custom fields like

User.to_json_stream(stream, {:only=>'name'})


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
