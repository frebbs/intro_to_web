class Attack
  def initialize(player)
    @player = player
  end

  def attack(player)
    player.receive_damage
  end

  def self.run(player)
    new(player).run
  end

  def run
    @player.receive_damage
  end
end