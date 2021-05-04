class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    @wheel = args[:wheel]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

  # 円周 = 直径 * PI
  def circumference
    diameter * Math::PI
  end
end

# Gearは'diameter'に応答できる'Duck'を要求する
Gear.new(52, 11, Wheel.new(26, 1.5)).gear_inches
