class Player

  DEFAULT_HP = 100
  DEFAULT_ATTACK = 10

  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack
    @hp -= DEFAULT_ATTACK
  end

end
