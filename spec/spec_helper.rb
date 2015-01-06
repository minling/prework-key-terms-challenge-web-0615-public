require 'base64'
require 'json'

RSpec.configure do |config|
  encoded_answers = "eyIxIjoiY29tbWFuZCBsaW5lIiwiMiI6InZlcnNpb24gY29udHJvbCIsIjMi\nOlsiY29va2llcyIsImNvb2tpZSJdLCI0IjoiNDA0IGVycm9yIiwiNSI6Indl\nYiBzZXJ2ZXIiLCI2IjoiaXAgYWRkcmVzcyIsIjciOiJkbnMiLCI4IjoicmVz\ncG9uc2l2ZSBkZXNpZ24iLCI5IjoiaGV4IiwiMTAiOiJodHRwcyIsIjExIjoi\nb3BlbiBzb3VyY2UiLCIxMiI6ImFqYXgiLCIxMyI6ImphdmFzY3JpcHQiLCIx\nNCI6ImRhdGFiYXNlIiwiMTUiOiJodG1sIiwiMTYiOiJjc3MifQ==\n"
  decoded_json = Base64.decode64(encoded_answers)
  answers = JSON.parse(decoded_json)
  
  answers.each do |number, answer_array|
    define_method("answer_#{number}") do 
      answer_array
    end
  end
end

def __
  raise 'Replace the underscore with your answer in "quotes"'
end
