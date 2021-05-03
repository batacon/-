class Gear
  attr_reader :chainring, :cog
  # attr_reader :cogで以下が定義される
  # def cog
  #   @cog
  # end

  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # タイヤはリムの周りを囲むので、直径を計算するためには２倍して足す
    ratio * (rim + (tire * 2))
  end
end
