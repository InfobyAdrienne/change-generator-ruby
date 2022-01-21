class Change_generator

  def convert(amount)
    if amount / 20 
      return Array.new((amount / 20), "£20")
    else 
      return false
    end
  end

  # private

  # @change
  # "£20"
  # "£10"
  # "£5"
  # "£2"
  # "£1"
  # "50p"
  # "20p"
  # "2p"
  # "1p"
  # making this change to commit 

end 