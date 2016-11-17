# Bitmovin-Player Rails
Adaptive HTML5 Video Player for Rails

## Usage
Anywhere in your views you can now easily embed a Bitmovin-Player:

```ruby
<%= bitmovin_player(
	width: '800px', height: '450px',
	dash: "//bitmovin-a.akamaihd.net/content/MI201109210084_1/mpds/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.mpd"
	hls: "//bitmovin-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8"
	progressive: "//bitmovin-a.akamaihd.net/content/MI201109210084_1/MI201109210084_mpeg-4_hd_high_1080p25_10mbits.mp4"
	poster: "//bitmovin-a.akamaihd.net/content/MI201109210084_1/poster.jpg") %>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'bitmovin-player-rails'
```

And then execute:
```bash
$ bundle
```

Now run the generator and follow the instructions
```bash
$ rails generate bitmovin_player
```

## Contributing
If you find a bug or need some help don't hesitate to raise an Issue here on GitHub or [contact us](https://bitmovin.com/contact/)

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
