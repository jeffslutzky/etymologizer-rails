class WordsController < ApplicationController

  def index
    client = Adapters::DictionaryApiConnection.new
    @word = "excellent"
    # @words = client.find_by_name(params[:name])
    binding.pry
  end

end
