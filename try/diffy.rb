require 'bundler/setup'
Bundler.require(:default)
# Bundler.require(:default, :try) # このようにするとGemfileでtryのブロックに書いているものもrequire無しで使える

require 'diffy'

str1 = <<-TXT
alpha
beta
TXT

str2 = <<-TXT
alpha
gumma
TXT

puts Diffy::Diff.new(str1, str2).to_s
puts '-' * 50
puts Diffy::Diff.new(str1, str2).to_s(:color)
puts '-' * 50
puts Diffy::Diff.new(str1, str2).to_s(:html_simple)
puts '-' * 50
puts Diffy::Diff.new(str1, str2, include_plus_and_minus_in_html: true).to_s(:html_simple)
puts '-' * 50
puts Diffy::Diff.new(str1, str2, include_plus_and_minus_in_html: true).to_s(:html)
puts '-' * 50


string1 = <<-TXT
Hello how are you
I'm fine
That's great
TXT

string2 = <<-TXT
Hello how are you?
I'm fine
That's swell
TXT

puts Diffy::Diff.new(string1, string2).to_s(:color)
puts Diffy::Diff.new(string1, string2).to_s(:html)

