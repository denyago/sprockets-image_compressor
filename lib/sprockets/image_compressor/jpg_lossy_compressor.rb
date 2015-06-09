require "sprockets/image_compressor/base"

module Sprockets
  module ImageCompressor
    class JpgLossyCompressor < JpgCompressor
      def command_options
        '--threshold=5 --max=85 --strip-all'
      end
    end
  end
end
