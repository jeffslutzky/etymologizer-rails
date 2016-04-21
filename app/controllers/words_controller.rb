class WordsController < ApplicationController

  def index
    client = Adapters::DictionaryApiConnection.new
    # word = params["word"]

    words = params["words"].split
    json_object = []

    words.each do |word|
      json_word = Crack::XML.parse(client.query(word))
      json_object.push(json_word)
    end

    # binding.pry

    # json = Crack::XML.parse(client.query(word))

    render json: json_object

  end

end
