require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "The Delicious Console" do
  context "when get all posts" do
    it "should be show all bookmarks url" do
			Delicious::Console.get_all_posts
		end
  end
end