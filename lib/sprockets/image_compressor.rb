require "sprockets/image_compressor/version"
require "sprockets/image_compressor/binary_finder"
require "sprockets/image_compressor/png_compressor"
require "sprockets/image_compressor/jpg_compressor"
require "sprockets/image_compressor/jpg_lossy_compressor"
require "sprockets/image_compressor/pass_through_compressor"
require "sprockets/image_compressor/integration"
require "sprockets/image_compressor/railtie" if defined?(Rails)

module Sprockets
  module ImageCompressor
    # Valid strategies:
    # - +nil+ will just pass through
    # - +:conservative+ (default) will use lossless algorithms
    # - +:aggressive+ will use lossy algorithms
    def self.strategy
      @@strategy ||= :conservative
    end

    def self.strategy=(str)
      @@strategy = str
    end
  end
end
