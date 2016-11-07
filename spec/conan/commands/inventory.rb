require 'spec_helper'

describe Conan::Commands::Inventory do
  def app
    Conan::Bot.instance
  end

  subject { app }

  it 'returns 0' do
    expect(message: "#{SlackRubyBot.config.user} inventory", channel: 'channel').to respond_with_slack_message('0')
  end
end