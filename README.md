# Metova Carrierwave

Metova Carrierwave configures Carrierwave to use Amazon S3 by inspecting `ENV` for your S3 configuration options.

## Installation

Add this line to your application's Gemfile:

    gem 'metova-carrierwave'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install metova-carrierwave

## Usage

Set the following `ENV` variables:

```ruby
ENV['AWS_S3_BUCKET_NAME']
ENV['AWS_S3_ACCESS_KEY_ID']
ENV['AWS_S3_SECRET_ACCESS_KEY']
```

Your app is now configured to upload files to the `ENV['AWS_S3_BUCKET_NAME']` S3 bucket. In
the test environment, file storage will be used instead and processing will be disabled.

If any of the `ENV` variables are absent, the configuration is skipped.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/metova-carrierwave/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
