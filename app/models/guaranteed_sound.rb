class GuaranteedSound < Sound
  def self.find(title, etx)
    all_files = Dir[SOUND_DIRECTORY]

    if file = all_files.detect { |file_path|  File.basename(file_path) == "#{title}.#{etx}"}
      Sound.new(file)
    else
      NoSound.new(title)
    end
  end
end
