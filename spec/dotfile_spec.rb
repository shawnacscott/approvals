require 'rspec/approvals/dotfile'

describe RSpec::Approvals::Dotfile do
  include RSpec::Approvals
  let(:dotfile) { '/tmp/.approvals' }

  before(:each) do
    Dotfile.stub(:path => dotfile)
    Dotfile.reset
  end

  it "appends the text" do
    Dotfile.append('text')
    File.readlines(dotfile).map(&:chomp).should eq(['text'])
  end

  it "appends the text exactly once" do
    Dotfile.append('text')
    Dotfile.append('text')
    File.readlines(dotfile).map(&:chomp).should eq(['text'])
  end
end
