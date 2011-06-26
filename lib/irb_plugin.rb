require 'rubygems'
require "irb_plugin/version"

module IrbPlugin
  def self.load_all_plugins
    dependent_gems = Gem.cache.select do |_, gemspec|
      gemspec.dependencies.any?{|dependency| dependency.name == "activesupport"}
    end.map do |name, gemspec|
      begin
        require "#{gemspec.name}/irb_plugin"
        name
      rescue LoadError
      end
    end.compact
  end
end
