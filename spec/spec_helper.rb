require 'base64'

RSpec.configure do |config|
  encoded_answers = "Y29tbWFuZCBsaW5lLCB2ZXJzaW9uIGNvbnRyb2wsIGNvb2tpZXMsIDQwNCBl\ncnJvciwgd2ViIHNlcnZlciwgSVAgYWRkcmVzcywgRE5TLCByZXNwb25zaXZl\nIGRlc2lnbiwgaGV4LCBIVFRQUywgb3BlbiBzb3VyY2UsIEFKQVgsIEphdmFz\nY3JpcHQsIGRhdGFiYXNlLCBIVE1MLCBDU1M=\n" 
  decoded_answers = Base64.decode64(encoded_answers)

  answers = decoded_answers.split(", ")

  answers.each_with_index do |answer, index|
    define_method("answer_#{index+1}") do 
      answer
    end
  end
end
