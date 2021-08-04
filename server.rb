configure do
  set :server, :puma
  set :port, ENV['PORT']
  set :bind, '0.0.0.0'
end

get '/ping' do
  'pong'
end
