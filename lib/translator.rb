require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons[:get_meaning] = []
  emoticons.each do |meanings, emoticon_pairs|
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
