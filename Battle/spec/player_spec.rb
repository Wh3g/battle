describe Player do
  subject(:player) {Player.new("John")}
  describe "#name" do
    it "returns a name" do
      expect(player.name).to eq "John"
    end
  end
end