require 'sinatra/base'

class Chitter < Sinatra::Base
  get '/' do
    @peeps = Peep.all
    erb :index
  end

  post '/' do
    'My first peep'
    redirect '/'
  end

  run! if app_file == $0
end