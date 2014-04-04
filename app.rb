require 'sinatra'
require 'digest/md5'

get '/' do
  Digest::MD5.hexdigest(Time.now.to_s)
end
