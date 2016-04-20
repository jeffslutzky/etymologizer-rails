class WordsController < ApplicationController

  def index
    client = Adapters::DictionaryApiConnection.new
    @word = "excellent"
    json = Crack::XML.parse(client.query(@word))
    # ety = json["entry_list"]["entry"][0] ? json["entry_list"]["entry"][0]["et"] : json["entry_list"]["entry"]["et"]
    render json: json
  end

end
