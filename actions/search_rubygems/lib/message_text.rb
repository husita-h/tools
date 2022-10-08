# frozen_string_literal: true

class MessageText
  require_relative "rubygems/search_rubygems.rb"
  require_relative "rubygems/data_rubygems.rb"

  def messages
    messages = []
    homepage_uri.each_with_object({}) do |obj, arg|
      arg["type"]  = "text"
      arg["label"] = "こんなライブラリを見つけました"
      arg["text"]   = obj
      messages     << arg
    end
    messages
  end

  private

  def homepage_uri
    DataRubygems.new(get_rubygems).homepage_uri
  end

  def get_rubygems
    SearchRubygems.new.get_rubygems
  end
end
