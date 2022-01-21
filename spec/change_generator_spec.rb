require './lib/change_generator.rb'

describe Change_generator do 
  subject (:change_generator) { described_class.new }
  
  describe 'get change by dividing by two' do
    it '£40 returns the change of £20 and £20' do 
      expect(change_generator.convert(40)).to eq ["£20", "£20"]
    end
  end

end 