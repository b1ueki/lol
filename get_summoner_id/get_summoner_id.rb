require 'net/http'
require 'uri'
require 'json'

uri = URI.parse("https://jp1.api.riotgames.com/lol/summoner/v3/summoners/by-name/Cro1x?api_key=RGAPI-d5023af3-d3b2-487d-a593-b67a4f324b5f")
return_data = Net::HTTP.get(uri)
summoner_data = JSON.parse(return_data)
summoner_id = summoner_data["accountId"]

puts summoner_id
