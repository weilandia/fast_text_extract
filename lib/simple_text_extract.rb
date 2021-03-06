# frozen_string_literal: true

require "simple_text_extract/version"
require "simple_text_extract/text_extractor"
require "simple_text_extract/format_extractor_factory"

module SimpleTextExtract
  SUPPORTED_FILETYPES = ["xls", "xlsx", "doc", "docx", "txt", "pdf", "csv", "zip"].freeze

  class Error < StandardError; end

  def self.extract(filename: nil, raw: nil, filepath: nil, tempfile: nil)
    TextExtractor.new(filename: filename, raw: raw, filepath: filepath, tempfile: tempfile).to_s
  end

  def self.supports?(filename: nil)
    SUPPORTED_FILETYPES.include?(filename.split(".").last)
  end
end
