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

    if !new_hash[:get_emoticon]
      new_hash[:get_emoticon] = { emo_pair[0] => emo_pair[1] }
    else
      new_hash[:get_emoticon][emo_pair[0]] = emo_pair[1]
    end

  end
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  if emoticons[:get_emoticon][emoticon]
    return emoticons[:get_emoticon][emoticon]
  else
    puts "Sorry, that emoticon was not found."
end

def get_english_meaning
  # code goes here
end
