require 'rspec'
require_relative '../grandma'

describe 'Grandma' do
  before :each do
    @gm = Grandma.new
  end

  it 'should return HUH?! SPEAK UP, SONNY! when passed string not in all CAPS' do
    @gm.grandma('lowercase').should eq 'HUH?! SPEAK UP, SONNY!'
  end

  it 'should return string starting with NO, NOT SINCE when passed string that is in CAPS, not including the last 7 chars' do
    @gm.grandma('UPPERCASE')[0..-7].should eq 'NO, NOT SINCE'
  end

  it 'should return string ending with ! when passed string that is in CAPS' do
    @gm.grandma('UPPERCASE')[-1].should eq '!'
  end

  it 'should return year 1930 or greater at the end of response to all CAPS' do
  @gm.grandma('UPPERCASE')[-6..-2].to_i.should be >= 1930
  end

  it 'should return year 1950 or less at the end of response to all CAPS' do
  @gm.grandma('UPPERCASE')[-6..-2].to_i.should be <= 1950
  end

  # there's got to be a way to make those last 4 tests into one test

end