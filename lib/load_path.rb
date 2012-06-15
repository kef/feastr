module LoadPath
  def self.add_to_load_path(*directories)
    directories.each do |directory|
      $LOAD_PATH.unshift(directory) unless $LOAD_PATH.include?(directory)
    end
  end
end
