require 'faraday_middleware'
require 'awesome_print'
require 'pry'

# redirectも追随する
client = Faraday.new('http://blog.takapra.com') do |conn|
  conn.response :follow_redirects
  conn.adapter :net_http
end

File.open(File.expand_path('list.txt', File.dirname($PROGRAM_NAME)), 'r') do |f|
  count = 0
  f.each.with_index do |line, i|
    line.chomp!

    # #始まりの行はスキップする
    next if line.start_with?("#")

    count += 1
    res = client.get(line)

    if res.status != 200
      ap "#{res.status}: #{line.ljust(60)} TO: #{res.env.url}"
    end
  end
  ap "FINISH processed #{count}"
end
