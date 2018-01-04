require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "Hello World"
  end
  get '/reversename/:name' do
    @name = params[:name].to_s
    "#{@name.reverse}."
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @count = 0
    @phrase = params[:phrase].to_s
    until @number == @count
      "#{@phrase}"
      @count += 1
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    "#{@word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]

  end

end
