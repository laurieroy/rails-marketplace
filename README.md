# Back My Project - a marketplace app - WIP
This is a marketplace app. People/makers can list project ideas, and get funded. There are incentive perks (nested attributes).
Funders/backers make payments using stripe connect. The host takes a cut. 

Built following a [web-crunch](https://web-crunch.com/posts/ruby-on-rails-marketplace-stripe-connect) code-along

I have had many difficulties along the way, most solved through reading the documentation/SO/google. The author uses a template, which was a bit out of date. I had to update tailwind and some gems to get the app to build... He also uses sidekiq, which I don't have set up so am getting Redis errors on testing the mailings. Taking a break... I skipped over part of video and had to go back to pick up missing code.

### Stack

- Ruby on Rails (3.0, 6.1)
- Stimulus JS
- Vanilla JS
- Stripe Connect
- Tailwind CSS

### New to me
* Polymorphism in the Comment model
* Module in routes
* Using jobs
* Mailer
* Using Stripe Connect
* Using Stimulus
* Nested Attributes

