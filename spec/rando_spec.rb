# frozen_string_literal: true

require_relative '../lib/rando'

describe 'rando test' do
  context 'rando test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to be_a(Float)
    end
  end

  context 'rando(5) test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando(5)
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to be_a(Integer)
    end
  end

  context 'rando(5, 10) test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando(5, 10)
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to be_a(Integer)
    end
  end

  context "rando(5, 'float') test" do
    before(:each) do
      rando = Rando.new

      @result = rando.rando(5, 'float')
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to be_a(Float)
    end
  end

  context "rando(5, 10, 'float') test" do
    before(:each) do
      rando = Rando.new

      @result = rando.rando(5, 10, 'float')
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to be_a(Float)
    end
  end

  context 'rando(true, false) test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando(true, false)
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to be(true).or be(false)
    end
  end

  context 'rando(["a", "b"]) test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando(%w[a b])
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to have_key(:index)
      expect(@result).to have_key(:value)
    end
  end

  context 'rando({a: 1, b: 2}) test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando({ a: 1, b: 2 })
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to have_key(:key)
      expect(@result).to have_key(:value)
    end
  end

  context 'rando("Gee willikers!") test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando('Gee willikers!')
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to be_a(String)
    end
  end

  context 'rando("") test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando('')
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to eq(false)
    end
  end

  context 'rando(nil) test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando(nil)
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to eq(false)
    end
  end
end
