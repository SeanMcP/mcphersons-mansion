require "json"

def get_json_data(file_name)
    raw = File.read("./data/#{file_name}.json")
    return JSON.parse(raw)
end

$desc = get_json_data("desc")