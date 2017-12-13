require 'spec_helper'

describe 'Testing the exchange rates' do

  before(:all)do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it 'Should be hash' do
    expect(@exchange_rates.json_file).to be_kind_of(Hash)
  end

  it 'the value of each country key should be a float' do
    expect(@exchange_rates.json_file["rates"]["AUD"]).to be_kind_of(Float)
  end

  it 'The order of within the rates should be in alphabetical order'do
    expect(@exchange_rates.json_file["rates"])
  end

  it "should contain the base as EUR" do
    expect(@exchange_rates.get_base_value).to eq "EUR"
  end

  it 'should contain date as a string' do
    expect(@exchange_rates.get_date_value).to be_kind_of(String)
  end


end
