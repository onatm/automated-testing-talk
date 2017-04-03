# Automated Testing with Cucumber and Capybara

OH HAI

## What is Cucumber?

- BDD Framework
- Written in Ruby
- Understands **Gherkin Language**

``` ruby
Feature:
  As a user I should be able to create a clone

Background:
  Given I am on SQL Clone Dashboard

Scenario: Navigate to 'Clone Destination' page
  When I click on "Clone" button
  Then I should see "Clone Destination" heading
```

## What is Capybara?

- Acceptance test framework for web applications
- Can be used with **Cucumber**
- Selenium, PhantomJS, etc.

``` ruby
visit('/dashboard')
click_button('Clone')
select('DEV-ONATM', from: 'Clone Destination')
fill_in('Clone Name', with: 'Clone1')
```

## Demo

`dockerfile`

```
...
```

start a container

```
docker ...
```

run the tests

```
cucumber ...
```

## References

- [https://cucumber.io/](https://cucumber.io/)
- [http://teamcapybara.github.io/capybara/](http://teamcapybara.github.io/capybara/)
- [https://blog.codecentric.de/en/2013/08/cucumber-setup-basics/](https://blog.codecentric.de/en/2013/08/cucumber-setup-basics/)
- [https://blog.codecentric.de/en/2013/08/cucumber-capybara-poltergeist/](https://blog.codecentric.de/en/2013/08/cucumber-capybara-poltergeist/)