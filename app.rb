require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end


  post '/' do
    text_from_user = params[:user_text]
  
    @analyzed_text = TextAnalyzer.new(text_from_user)
  
    erb :results
    # use erb tags to display the data stored in the @analyzed_text variable
  end
end
