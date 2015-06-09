require "tempfile"

module Sprockets
  module ImageCompressor

    GEM_ROOT = File.expand_path File.join(File.dirname(__FILE__), "../../../")

    class Base
      def binary_path
        @binary_path ||= BinaryFinder.new(@name).path
      end

      private

      def log_compression_ratio(original, compressed)
        ratio = 100 - (compressed.size.to_f / original.size.to_f) * 100
        puts "ImageCompressor: #{@name} compressed #{ratio.round}%"
      end
    end

  end
end
