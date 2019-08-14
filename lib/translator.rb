# require modules here

require "yaml"


def load_library(file_path)
  emoticons = YAML.load_file(file_path)

  emoticons.reduce({:get_meaning => {}, :get_emoticon => {}}) do |memo, (key, value)|
    memo[:get_meaning][value[1]] = key
    memo[:get_emoticon][value[0]] = value[1]
    memo
  end
end

def get_japanese_emoticon(file_path, emoticon)
  emoticon_hash = load_library(file_path)
  
  
end

def get_english_meaning
  # code goes here
end