require 'player'

describe Player do
  subject(:player) { described_class.new('Sean') }
  describe '#name' do
    it 'returns the players name' do
      expect(player.name).to eq 'Sean'
    end
  end
end
