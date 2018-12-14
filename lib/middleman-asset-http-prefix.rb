# rubocop:disable Naming/FileName, Lint/MissingCopEnableDirective, Metrics/MethodLength, Metrics/LineLength
require 'middleman-core'

# Override the asset_url helper to make use of asset_http_prefix, if defined
class AssetHttpPrefix < ::Middleman::Extension
  helpers do
    def asset_url(path, prefix = '', **options)
      begin
        original_output = super
      rescue StandardError
        original_output = super(path, prefix)
      end

      if config[:asset_http_prefix]
        original_output.sub(
          /^#{Regexp.escape(config[:http_prefix])}/, config[:asset_http_prefix]
        )
      else
        original_output
      end
    end
  end
end

Middleman::Extensions.register :asset_http_prefix do
  require 'middleman-asset-http-prefix'
  AssetHttpPrefix
end
