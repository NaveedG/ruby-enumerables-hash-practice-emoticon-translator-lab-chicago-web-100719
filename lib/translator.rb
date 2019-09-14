require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons[:get_meaning] = {}
  emoticons[:get_emoticon] = []
  emoticons.each do |meaning, emoticon_pair|
    emoticons[:get_meaning] = meaning
  end
  emoticons
end

puts load_library("./lib/emoticons.yml")

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
