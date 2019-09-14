require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  emoticons.each do |emoticon|
    get_meaning[emoticon] = {}
  end
  emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
