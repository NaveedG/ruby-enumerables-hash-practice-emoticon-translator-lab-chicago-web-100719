require "yaml"

def load_library(file_path)
  new_hash = {}
  emoticons = YAML.load_file(file_path)
  emoticons.each do |eng_meaning, emo_pair|
    if !new_hash[:get_meaning]
      new_hash[:get_meaning] = { emo_pair[1] => eng_meaning }
    else
      new_hash[:get_meaning][emo_pair[1]] = eng_meaning
    end


    new_hash[:get_emoticon] = {}
  end
  new_hash
end

puts load_library("./lib/emoticons.yml")

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
