#!/usr/bin/env ruby
require 'json'
require 'addressable'
require 'rest-client'
require 'byebug'

class GetIpInfo
  def get_site_or_ip_address(site)
    query = setup_ip_query(clean(site))
    response = get_request(query) # max of 150 requests per minute
    process_json_response(response.body)
  end

  private
  def clean(site)
    site[/((www)?\.?\w+\.\w+)/]
  end

  def process_json_response(response)
    JSON.parse(response)
  end

  def get_request(url)
    response = RestClient::Request.execute(method: :get, url: Addressable::URI
                                             .parse(url) .normalize.to_str,
                                           timeout: 5)
    response
  end
  
  def setup_ip_query(url)
    "http://ip-api.com/json/#{url}"
  end
end

def start
  puts '[locate_ip] ENTER URL OR IP ADDRESS'
  url_or_ip = gets.chomp
  puts "[locate_ip] PROCESSING REQUEST FOR #{url_or_ip}"
  ip_info_obj = GetIpInfo.new
  json_response = ip_info_obj.get_site_or_ip_address(url_or_ip)
  puts "#{json_response}" if json_response
end

start
