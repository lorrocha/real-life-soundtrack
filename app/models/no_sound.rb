class NoSound < Sound
  def initialize(sound_file)
    @title = File.basename sound_file
  end

  def title
    "There are no soundfiles available with the name #{@title}"
  end

  def link
    ''
  end
end
