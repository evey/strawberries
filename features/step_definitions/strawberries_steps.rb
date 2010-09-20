Given /^a strawberry that is "(.*)"$/ do |color|
  Strawberry.make!(:color => color)
end
