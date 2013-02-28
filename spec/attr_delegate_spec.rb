require 'spec_helper'



describe Module do

  let(:klass) do

    Class.new do
      attr_delegate :foo, to: :bar
    end

  end

  let(:object) { klass.new }
  let(:bar) { stub(:foo => 1, :foo= => 1) }


  it "should respond_to :attr_delegate" do
    Class.respond_to?(:attr_delegate).should eq(true)
  end

  it "should have define reader" do
    object.respond_to?(:foo).should be_true
  end

  it "should define a writer" do
    object.respond_to?(:foo=).should be_true
  end


  it "should delegate the reader to bar" do
    object.should_receive(:bar).and_return(bar)
    bar.should_receive(:foo).and_return(42)
    object.foo.should eq(42)
  end

  it "should delegate the writer to foo" do
    object.should_receive(:bar).and_return(bar)
    bar.should_receive(:foo=)
    expect { object.foo = 42 }.to_not raise_error(NameError)
  end


end
