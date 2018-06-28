class CompareService
  def initialize(gasoline, ethanol)
    @gasoline = gasoline
    @ethanol = ethanol
  end

  def perform
    if (@ethanol / @gasoline) * 100 <= 70
      'Álcool'
    else
      'Gasolina'
    end
  end
end
