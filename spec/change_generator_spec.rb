require './lib/change_generator.rb'

describe ChangeGenerator do 
  subject (:change_generator) { described_class.new }
  
    it "£50 returns the change of £50" do
      expect(change_generator.convert(50.00)).to eq(["£50"])
    end
  
    it 'retuns 1 coin in exact amount in pence' do
      expect(subject.convert(0.05)).to eq ['5p']
    end

    it '£40 returns the change of £20 and £20' do 
      expect(change_generator.convert(40.00)).to eq ["£20", "£20"]
    end

    it 'returns notes and coins' do
      expect(subject.convert(7.42)).to eq ["£5", "£1", "£1", "20p", "20p", "2p"] 
    end
end 