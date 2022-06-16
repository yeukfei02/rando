# frozen_string_literal: true

require_relative '../lib/rando'

describe 'rando test' do
  context 'rando_sequence(5) test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando_sequence(5)
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to be_a(Array)
      expect(@result).to match_array([2, 0, 5, 4, 3, 1])
    end
  end

  context 'rando_sequence(5, 10) test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando_sequence(5, 10)
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to be_a(Array)
      expect(@result).to match_array([7, 10, 6, 5, 9, 8])
    end
  end

  context 'rando_sequence(["a", "b"]) test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando_sequence(%w[a b])
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to be_a(Array)

      @result.each do |item|
        expect(item).to have_key(:index)
        expect(item).to have_key(:value)
      end
    end
  end

  context 'rando_sequence({a: 1, b: 2}) test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando_sequence({ a: 1, b: 2 })
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to be_a(Array)

      @result.each do |item|
        expect(item).to have_key(:key)
        expect(item).to have_key(:value)
      end
    end
  end

  context 'rando_sequence("Good gravy!") test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando_sequence('Good gravy!')
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to be_a(Array)
      expect(@result).to match_array(['o', ' ', 'r', 'd', 'o', '!', 'g', 'v', 'y', 'a', 'G'])
    end
  end

  context 'rando_sequence(nil) test' do
    before(:each) do
      rando = Rando.new

      @result = rando.rando_sequence(nil)
      puts "@result = #{@result}"
    end

    it 'returns success' do
      expect(@result).to eq(false)
    end
  end
end
