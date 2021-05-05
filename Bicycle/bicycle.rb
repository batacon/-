class Bicycle
  attr_reader :size, :tape_color, :front_shock, :rear_shock

  def initialize(args)
    @size = args[:size]
    @tape_color = args[:tape_color]
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
  end

  # styleの確認は危険な道へ進む一歩
  def spares
    if style == :road
      {
        chain: '10-speed',
        tire_size: '23', # millimeters
        tape_color: tape_color
      }
    else
      {
        chain: '10-speed',
        tire_size: '2.1', # inches
        rear_shock: rear_shock
      }
    end
  end
end

bike = Bicycle.new(size: 'M', tape_color: 'red', front_shock: 'Manitou', rear_shock: 'Fox')
bike.spares
