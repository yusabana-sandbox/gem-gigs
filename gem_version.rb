# Oh my god!!
puts '2.1.11' > '2.1.2' # false
# OK! puts '2.1.11.1' > '2.1.11' # true
puts '2.1.11' > '2.1.11.rc1' # false
puts '2.1.11' > '2.1.11.beta1' # false

# Nice!!
puts Gem::Version.create('2.1.11') > Gem::Version.create('2.1.2') # true
puts Gem::Version.create('2.1.11.1') > Gem::Version.create('2.1.11') # true
puts Gem::Version.create('2.1.11') > Gem::Version.create('2.1.11.rc1') # true
puts Gem::Version.create('2.1.11') > Gem::Version.create('2.1.11.beta1') # true
