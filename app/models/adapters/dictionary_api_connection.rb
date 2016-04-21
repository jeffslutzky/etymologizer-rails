module Adapters
  class DictionaryApiConnection
    include HTTParty

    attr_reader :connection

    def initialize
      @connection = self.class
    end

    def base_URL
      "http://www.dictionaryapi.com/api/v1/references/collegiate/xml"
    end

    def URL(word)
      "#{self.base_URL}/#{word}?key=#{ENV['API_key']}"
    end

    def query(word)
      result = connection.get(self.URL(word))
    end

  end
end
