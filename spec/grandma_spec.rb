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

  it 'should return year between 1930 and 1950 at the end of response to all CAPS' do
  @gm.grandma('UPPERCASE')[/\d+/].to_i.should be >= 1930
  end
end