require 'sinatra'

get '/' do
    'Served in port ' + settings.port.to_s
end