# Activerecord::Json::Streamer

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'activerecord-json-streamer', :git => 'git://github.com/unloved/activerecord-json-streamer.git'

And then execute:

    $ bundle

## Usage

stream = StringIO.new
User.stream_json(@stream)
or with custom fields like
User.stream_json(@stream, {:only=>'name'})

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
