require 'json'

json = File.read('json_example.json')


json_parse = JSON.parse(File.read('json_example.json'))

p json_parse['colors']
