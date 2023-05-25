# encoding: utf-8

require_relative 'ruby_dmm/client'

module RubyDmm
  def self.new(options = {})
    RubyDmm::Client.new(options)
  end
end
