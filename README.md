[![Gem Version](https://badge.fury.io/rb/middleman-asset-http-prefix.svg)](http://badge.fury.io/rb/middleman-asset-http-prefix)

## Usage

In the build section of config.rb:

```ruby
configure :build do
  activate :asset_http_prefix

  # and set the prefixes
  set :http_prefix, 'https://www.example.com'
  set :asset_http_prefix, 'https://cdn.example.com'
end
```
