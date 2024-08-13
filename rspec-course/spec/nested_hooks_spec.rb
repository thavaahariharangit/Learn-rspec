RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end
  before(:example) do
    puts 'OUTER Before example'
  end
  it 'does basic math' do
    puts 'OUTER example'
    expect(1+1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER Before context'
    end
    before(:example) do
      puts 'INNER Before example'
    end
    it 'more math here' do
      puts 'INNER example'
      expect(1+1).to eq(2)
    end
  end
end
