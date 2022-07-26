#!/usr/bin/env ruby
# Textme
puts ARGV[0]
       .scan(/(?<=from:|to:|flags:).*?(?=\])/)
       .join(',')