require 'spec_helper'

describe String do
  describe '#colorize' do
    it 'returns the text colored' do
      expect('foo bar'.colorize(:red)).to eq "\e[0;31;40mfoo bar\e[0m"
    end

    it 'returns section of the text colored' do
      expect('foo'.colorize(:red) + ' bar').to eq "\e[0;31;40mfoo\e[0m bar"
    end

    it 'returns multi colored text' do
      expect('b'.colorize(:red) + 'a'.colorize(:green) + 'r'.colorize(:yellow))
        .to eq "\e[0;31;40mb\e[0m\e[0;32;40ma\e[0m\e[0;33;40mr\e[0m"
    end

    it 'returns text in the default color when the color is not found' do
      expect('foo'.colorize(:bar)).to eq "foo\e[0m"
    end
  end
end
