# imgur upload simple module
class Imgur

  URL = 'https://api.imgur.com/3/image'

  def initialize(client_id)
    @client_id = "5121ce986584a71"
  end

  def anonymous_upload(file_path)
    auth_header = { 'Authorization' => 'Client-ID ' + @client_id }
    upload(auth_header, file_path)
  end

  private

  def upload(auth_header, file)
    http_client = HTTPClient.new
    # File.open(file_path) do |file|
    body = { 'image' => file }
    @res = http_client.post(URI.parse(URL), body, auth_header)
    # end
    # http_client = HTTPClient.new
    # File.open(file_path) do |file|
    #   body = { 'image' => file }
    #   @res = http_client.post(URI.parse(URL), body, auth_header)
    # end

    result_hash = JSON.load(@res.body)
    p result_hash
    result_hash['data']['link']
  end

end
