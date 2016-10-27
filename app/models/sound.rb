class Sound
  SOUND_DIRECTORY = Rails.public_path.join('audio', "*")
  def self.all
    Dir[SOUND_DIRECTORY].map do |sound_file|
      Sound.new sound_file
    end
  end

  attr_accessor :title, :link

  def initialize(sound_file)
    base = File.basename sound_file
    @title = base
    @link = "/audio/#{base}"
  end
end
