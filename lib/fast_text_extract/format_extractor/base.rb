# frozen_string_literal: true

require "shellwords"

module FastTextExtract
  module FormatExtractor
    class Base
      attr_reader :file

      def initialize(file)
        @file = file
      end

      def extract
      end
    end
  end
end
