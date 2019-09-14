require "yaml"

def load_library(file_path)
  new_hash = {}
  emoticons = YAML.load_file(file_path)
  emoticons.each do |meanings, emoticon_pairs|
      emoticons[:get_meaning].push(meanings)
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
