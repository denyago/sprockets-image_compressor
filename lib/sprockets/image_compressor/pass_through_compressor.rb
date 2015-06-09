require "sprockets/image_compressor/base"

module Sprockets
  module ImageCompressor
    class PassThroughCompressor < Base
      def compress(content)
        content
      end
    end
  end
end
