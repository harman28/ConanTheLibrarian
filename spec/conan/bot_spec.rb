require 'spec_helper'

describe Conan::Bot do
  def app
    Conan::Bot.instance
  end

  subject { app }

  it_behaves_like 'a slack ruby bot'
end
