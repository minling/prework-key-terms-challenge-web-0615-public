require 'base64'
require 'json'

RSpec.configure do |config|
  encoded_answers = "eyIxIjpbImNvbW1hbmQgbGluZSJdLCIyIjpbInZlcnNpb24gY29udHJvbCJd\nLCIzIjpbImNvb2tpZXMiLCJjb29raWUiXSwiNCI6WyI0MDQgZXJyb3IiXSwi\nNSI6WyJ3ZWIgc2VydmVyIl0sIjYiOlsiaXAgYWRkcmVzcyJdLCI3IjpbImRu\ncyJdLCI4IjpbInJlc3BvbnNpdmUgZGVzaWduIl0sIjkiOlsiaGV4Il0sIjEw\nIjpbImh0dHBzIl0sIjExIjpbIm9wZW4gc291cmNlIl0sIjEyIjpbImFqYXgi\nXSwiMTMiOlsiamF2YXNjcmlwdCJdLCIxNCI6WyJkYXRhYmFzZSJdLCIxNSI6\nWyJodG1sIl0sIjE2IjpbImNzcyJdfQ==\n"
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
