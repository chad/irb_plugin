Trivial irb plugin loader.  Install into .irbrc with:

require 'irb_plugin'

Any gem that has a "#{gemname}/irb_plugin.rb" file and depends on irb_plugin will
have its irb_plugin.rb file automatically loaded when .irbrc is evaluated.
