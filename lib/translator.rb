require "yaml"

def load_library(file_path)
  new_hash = {}
  new_hash[:get_meaning] = {}
  new_hash[:get_emoticon] = {}

  emoticons = YAML.load_file(file_path)
  emoticons.each do |eng_meanings, emoticon_pairs|
    emoticon_pairs.each do |emoticon_pair|
    new_hash[:get_meaning][:japanese] = []
    new_hash[:get_meaning][:japanese] << emoticon_pair
    end
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
