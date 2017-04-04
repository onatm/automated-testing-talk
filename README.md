# Automated Testing with Cucumber and Capybara

OH HAI

## What is Cucumber?

- BDD Framework
- Written in Ruby
- Understands **Gherkin Language**

```
Feature:
  As a user I should be able to create a clone

Background:
  Given I am on SQL Clone Dashboard

Scenario: Navigate to 'Clone Destination' page
  When I click on "Clone" button
  Then I should see "Clone Destination" heading
```

``` ruby
Given(/^I am on SQL Clone Dashboard$/) do
  pending
end

When(/^I click on "([^"]*)" button$/) do |arg1|
  pending
end

Then(/^I should see "([^"]*)" heading$/) do |arg1|
  pending
end
```

## What is Capybara?

- Web-based test automation framework
- Can be used with **Cucumber**
- Selenium, PhantomJS, etc.
- DSL

``` ruby
visit('/dashboard')
click_button('Clone')
select('DEV-ONATM', from: 'Clone Destination')
fill_in('Clone Name', with: 'Clone1')
```

## Demo

```
xvfb-run -a --server-args="-screen 0 1920x1080x24" cucumber --format pretty --format html --out results.html
```

## References

- [https://cucumber.io/](https://cucumber.io/)
- [http://teamcapybara.github.io/capybara/](http://teamcapybara.github.io/capybara/)
- [https://blog.codecentric.de/en/2013/08/cucumber-setup-basics/](https://blog.codecentric.de/en/2013/08/cucumber-setup-basics/)
- [https://blog.codecentric.de/en/2013/08/cucumber-capybara-poltergeist/](https://blog.codecentric.de/en/2013/08/cucumber-capybara-poltergeist/)