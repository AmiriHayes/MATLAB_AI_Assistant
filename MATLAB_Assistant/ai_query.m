function response = ai_query(prompt)
    import matlab.net.*
    import matlab.net.http.*

    % Define the API endpoint Davinci & KEY
    api_endpoint = "https://api.openai.com/v1/chat/completions";
    api_key = "get one at https://platform.openai.com/api-keys";
    headers = ["Content-Type", "application/json"; "Authorization", "Bearer " + api_key];
    
    % Define the data
    message = containers.Map({'role', 'content'}, {'user', prompt});
    data = containers.Map({'model', 'messages'}, {'gpt-3.5-turbo', {message}});
    data = jsonencode(data);
    
    % Send the POST request
    options = weboptions('RequestMethod', 'post', 'HeaderFields', headers);
    response = webwrite(api_endpoint, data, options);
    if response
        response.choices.message.content
    end
end
