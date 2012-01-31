Given /^I have articles titled (.+)$/ do |titles|
  titles.split(", ").each do |title|
    Article.create!(:title => title)
  end
end

When /^I go to the list of articles$/  do
  visit("/articles")
end

Then /^I should see "([^"]*)"$/ do |title|
   page.should have_content(title)
end

