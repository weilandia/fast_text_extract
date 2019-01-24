# frozen_string_literal: true

module FastTextExtract
  class TextExtractor
    def self.call(filename: nil, raw: nil, filepath: nil)
      if !filename.nil? && !raw.nil?
        TempfileExtractor.new(filename: filename, raw: raw).extract
      elsif !filepath.nil? && File.exist?(filepath)
        FileExtractor.new(filepath: filepath).extract
      end
    end

    def extract
      text = FormatExtractorFactory.call(file).extract
      cleanup

      text
    end

    private

      def cleanup
      end
  end
end