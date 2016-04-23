class WordsController < ApplicationController

  def index
    client = Adapters::DictionaryApiConnection.new

    words = params["words"].split
    json_object = []

    words.each do |word|
      json_word = Crack::XML.parse(client.query(word))
      json_object.push(json_word)
    end

    render json: json_object

  end

end
