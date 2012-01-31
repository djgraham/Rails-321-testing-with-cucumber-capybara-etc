Given /^I have articles titled (.+)$/ do |titles|
  titles.split(", ").each do |title|
    Article.create!(:title => title)
  end
end

When /^I go to the list of (.+)$/ do |item|
  visit ("/#{item}")
end


