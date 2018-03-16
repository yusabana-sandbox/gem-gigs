require 'bundler/setup'
Bundler.require(:default)
# Bundler.require(:default, :try) # このようにするとGemfileでtryのブロックに書いているものもrequire無しで使える

require 'datasets'


iris = Datasets::Iris.new
num = 0
iris.each.with_index(1) do |record, i|
  p [
     i,
     record.sepal_length,
     record.sepal_width,
     record.petal_length,
     record.petal_width,
     record.class,
  ]
  num += 1
end


wiki = Datasets::Wikipedia.new(language: :ja)
num = 0
wiki.each.with_index(1) do |record, i|
  p [
    i,
    record.title,
    record.revision.id,
    record.revision.text,
  ]
  break if i > 1
end
