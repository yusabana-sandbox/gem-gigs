require 'bundler/setup'  
Bundler.require(:default)

require 'tty-prompt'

prompt = TTY::Prompt.new

aa = prompt.ask('いかが?', default: ENV['USER'])
bb = prompt.yes?('Like?')
cc = prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))

choices = %w(vodka beer wine whisky bourbon)
dd = prompt.multi_select("Select drinks?", choices)

choices = [
  { key: 'y', name: 'overwrite this file', value: :yes },
  { key: 'n', name: 'do not overwrite this file', value: :no },
  { key: 'a', name: 'overwrite this file and all later files', value: :all },
  { key: 'd', name: 'show diff', value: :diff },
  { key: 'q', name: 'quit; do not overwrite this file ', value: :quit }
]
ee = prompt.expand('Overwrite Gemfile?', choices)

ap aa
ap bb
ap cc
ap dd
ap ee
