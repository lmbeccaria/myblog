require 'spec_helper'

describe ApplicationHelper do
  subject { full_title("foo") }

  describe "full_title" do 
    #it "should include the page title" do
    #  expect(full_title("foo")).to match(/foo/)
    #end 
    it { should match(/foo/) }
    it { should match(/^Myblog for is the best/) }
    #it { should not match(/\|/) }
    it "should not include a bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end
