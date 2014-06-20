# Rack::Forward

Rack Middleware to proxy requests to a remote server. This is usefull for proxying AJAX request to remote services.

Forked from: https://gist.github.com/cwninja/207884

Thanks to @cwninja.

## Installation

Add this line to your application's Gemfile:

    gem 'rack-forward'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-forward

## Usage

```ruby
use Rack::Forward do |req|
  if req.path =~ %r{^/remote/service.php$}
    URI.parse("http://remote-service-provider.com/service-end-point.php?#{req.query_string}")
  end
end

run proc { |env| [200, {"Content-Type" => "text/plain"}, ["Ha ha ha"]] }
```

## Contributing

1. Fork it ( https://github.com/lonre/rack-forward/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
