RSpec.describe 'compare_service' do
  it 'should compare and return gasoline' do
    gasoline = 4.99
    ethanol = 4.00
    res = CompareService.new(gasoline, ethanol).perform
    expect(res).to eql('Gasolina')
  end

  it 'should compare and return ethanol' do
    gasoline = 4.99
    ethanol = 3.03
    res = CompareService.new(gasoline, ethanol).perform
    expect(res).to eql('Álcool')
  end
end
