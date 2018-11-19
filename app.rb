require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    answer = 'I am cool'

      if params[:operation] == 'add'
         answer = "#{@number1 + @number2}"
      elsif params[:operation] == 'multiply'
         answer = "#{@number1 * @number2}"
      elsif params[:operation] == 'divide'
         answer = "#{@number1 / @number2}"
      elsif params[:operation] == 'subtract'
        answer = "#{@number1 - @number2}"
      else "Please check your spelling me old mucker"
      end

  end

end
