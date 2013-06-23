class Grandma
  def grandma(sonnysays)
    if sonnysays != sonnysays.upcase
      'HUH?! SPEAK UP, SONNY!'
    else
      "NO, NOT SINCE #{1930+rand(20)}!"
    end
  end
end

# gm = Grandma.new
# puts gm.grandma("ASDF")