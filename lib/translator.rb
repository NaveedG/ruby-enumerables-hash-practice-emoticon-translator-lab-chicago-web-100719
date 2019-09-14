require "yaml"

def load_library(file_path)
  new_hash = {}
  new_hash[:get_meaning] = {}
  new_hash[:get_emoticon] = {}

  emoticons = YAML.load_file(file_path)
  emoticons.each do |eng_meanings, emoticon_pairs|
    new_hash[:get_meaning][:japanese] = []
    new_hash[:get_meaning][:japanese] << emoticon_pairs[1]
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
