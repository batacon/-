class Gear
  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end

  def ratio
    @chainring / @cog.to_f # インスタンス変数を直接参照するのは破滅への道
  end

  def gear_inches
    # タイヤはリムの周りを囲むので、直径を計算するためには２倍して足す
    ratio * (rim + (tire * 2))
  end
end
