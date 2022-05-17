class AuctionAppController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    puts "-----------In Index------------"
    @allAnswers = Answer.all
    
    puts "# of answers = #{@allAnswers.size}"

    #compute averages here 

    #@allBids = Bid.all
    #puts "# of bids = #{@allBids.size}"
    #@allBids = @allBids.sort_by {|bid| [-bid.amount, bid.bidder]}
  end

  def enterBid
    puts "-----------In Enter Bid------------"
    
    #amount = params[:amountInput].to_f

    name = params[:n]
    q1answer = params[:q1].to_f
    q2answer = params[:q2].to_f
    q3answer = params[:q3].to_f

    #map = {"bidder" => bidder, "amount" => amount}
    map = {"name" => name, "q1answer" => q1answer, "q2answer" => q2answer, "q3answer" => q3answer}
    #newRow = Bid.new(map)
    newRow = Answer.new(map)
    respond_to do |format|
      if newRow.save
        puts "Success!"
        format.html{redirect_to auction_app_url}
      else
        format.html{redirect_to "/"}
      end
    end
  end
end
