require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "The Delicious Console" do
  context "when used by someone" do
    it "should be work fine" do
			Delicious::Console.get_all_posts
		end
  end
end