Given(/^I am on SQL Clone Dashboard$/) do
  visit 'http://sqlclone.red-gate.com/'
end

When(/^I click on "([^"]*)" button$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "([^"]*)" heading$/) do |arg1|
  expect(page).to have_selector(:text => arg1)
end