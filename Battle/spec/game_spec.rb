require 'game'

describe Game do
  let(:player) { double(name: "John", hit_points: Player::DEFAULT_HIT_POINTS)}
  describe '#attack' do
    it "attacks a player" do
      expect(player).to receive(:damage)
      subject.attack(player)
    end
  end
end