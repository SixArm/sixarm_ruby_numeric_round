# SixArm.com → Ruby → <br> Numeric #round, #floor, #ceil methods with precision

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_numeric_round.svg)](http://badge.fury.io/rb/sixarm_ruby_numeric_round)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_numeric_round.png)](https://travis-ci.org/SixArm/sixarm_ruby_numeric_round)
[![Code Climate Maintainability](https://api.codeclimate.com/v1/badges/1cf9d84964d38caab79a/maintainability)](https://codeclimate.com/github/SixArm/sixarm_ruby_numeric_round/maintainability)

* Git: <https://github.com/sixarm/sixarm_ruby_numeric_round>
* Doc: <http://sixarm.com/sixarm_ruby_numeric_round/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_numeric_round>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [changes](CHANGES.md), [license](LICENSE.md), [contributing](CONTRIBUTING.md).

<!--header-shut-->


## Introduction

Simple numeric rounding methods like #round, #floor, #ceil with various precisions.

For docs go to <http://sixarm.com/sixarm_ruby_numeric_round/doc>

Want to help? We're happy to get pull requests.


<!--install-open-->

## Install

### Gem

Run this command in your shell or terminal:

    gem install sixarm_ruby_numeric_round

Or add this to your Gemfile:

    gem 'sixarm_ruby_numeric_round'

### Require

To require the gem in your code:

    require 'sixarm_ruby_numeric_round'

<!--install-shut-->


## Examples

Round at a given decimal point:

    4.555.ceil_at(1)  #=> 4.6
    4.555.floor_at(1)  #=> 4.5
    4.555.round_at(1)  #=> 4.6
    4.555.truncate_at(1)  #=> 4.5

Round to a given precision:

    4.555.ceil_to(0.1)   #=> 4.6
    4.555.floor_to(0.1)  #=> 4.5
    4.555.round_to(0.1)  #=> 4.6
    4.555.truncate_to(0.1)  #=> 4.5

Conceptually, the methods for round, floor, ceil, and truncate will typically be for floating point numbers.
However, these methods can actually be for pretty much any Numeric object.
For example, one could round an Integer to the nearest kilo.


## Credit

These methods are based on the Facets library for Ruby and the developer named Trans. 

The #round_at and #round_to methods are exact copies and fully compatible with Facets. The rest of the methods are very similar code and fully co-existant with Facets. 

We're asking the Facets team to consider including the rest of the methods.
