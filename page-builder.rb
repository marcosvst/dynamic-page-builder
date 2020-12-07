require 'sinatra'
require 'yaml'

# Components
require './components/header.rb'
require './components/iconed-list.rb'

get '/:endpoint' do
    endpoint = params['endpoint']
    file_name = endpoint + '.yml'

    begin
        file_content = File.read("contents/#{file_name}")
        file_components = YAML.safe_load(file_content)

        @page_content = ''
        file_components.fetch('components', {}).each do |component|
            @page_content += send(component['name'].gsub('-', '_'), component['content'])
        end
        
        erb :default_template
    rescue StandardError => e
        puts "Failed to load the endpoint because: #{e}"
        "Oops! Seems like this page doesn't exist"
    end
end