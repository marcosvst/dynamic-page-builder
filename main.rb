require 'sinatra'
require 'yaml'

get '/:endpoint' do
  endpoint = params['endpoint']
  file_name = endpoint + '.yml'

  begin
    file_content = File.read("contents/#{file_name}")
    file_components = YAML.safe_load(file_content)

    erb :default_template, :locals => file_components
  rescue StandardError => e
    puts "Failed to load the endpoint because: #{e}"
    erb :not_found_template
  end
end
