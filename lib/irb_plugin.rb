require 'rubygems'
require "irb_plugin/version"

module IrbPlugin
  def self.load_all_plugins
    dependent_gems = Gem.source_index.select do |_, gemspec|
      gemspec.dependencies.any?{|dependency| dependency.name == "irb_plugin"}
    end.map do |name, gemspec|
      begin
        require "#{gemspec.name}/irb_plugin"
        name
      rescue LoadError
      end
    end.compact
  end
end

IrbPlugin.load_all_plugins
