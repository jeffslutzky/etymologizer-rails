class WordsController < ApplicationController

  def index
    client = Adapters::DictionaryApiConnection.new
    @word = "excellent"
    binding.pry
  end

end
