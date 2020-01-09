require 'player'

describe Player do
  subject(:dave) {Player.new('Dave')}
  subject(:kittens) {Player.new('Kittens')}

  describe '#name' do
    it 'returns the player name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#hit_points' do
    it 'returns the player health' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'lowers the player health pool' do
      expect {dave.receive_damage}.to change {dave.hit_points}.by(-5)
    end

  end
end