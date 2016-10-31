class NapsterService
  def initialize
    options = {
      api_key: ENV['NAPSTER_KEY'],
      api_secret: ENV['NAPSTER_SECRET'],
      username: ENV['HOST_USER_ACCOUNT'],
      password: ENV['HOST_USER_PASSWORD']
    }

    @client = Napster::Client.new(options)
  end

  def find_track(name: nil, id: nil)
    name.nil? ? @client.tracks.find(id) : @client.tracks.find(name)
  end
end
