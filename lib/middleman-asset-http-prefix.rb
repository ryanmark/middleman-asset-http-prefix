# Require core library
require 'middleman-core'

# Extension namespace
class AssetHttpPrefix < ::Middleman::Extension
  helpers do
    def asset_url(path, prefix = '', **options)
      begin
        original_output = super
      rescue
        original_output = super(path, prefix)
      end

      if config[:asset_http_prefix]
        original_output.sub(
          /^#{Regexp.escape(config[:http_prefix])}/, config[:asset_http_prefix])
      else
        original_output
      end
    end
  end
end

AssetHttpPrefix.register(:asset_http_prefix)
