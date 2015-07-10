# Ruby » <br> Numeric #round, #floor, #ceil methods with precision

* Doc: <http://sixarm.com/sixarm_ruby_numeric_round/doc>
* Gem: <http://rubygems.org/gems/sixarm_ruby_numeric_round>
* Repo: <http://github.com/sixarm/sixarm_ruby_numeric_round>
<!--HEADER-SHUT-->


## Introduction

Simple numeric rounding methods like #round, #floor, #ceil with various precisions.

For docs go to <http://sixarm.com/sixarm_ruby_numeric_round/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "sixarm_ruby_numeric_round", ">= 1.0.3", "< 2"

To install using the command line, run this:

    gem install sixarm_ruby_numeric_round -v ">= 1.0.3, < 2"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install sixarm_ruby_numeric_round -v ">= 1.0.3, < 2" --trust-policy HighSecurity

To require the gem in your code:

    require "sixarm_ruby_numeric_round"

<!--INSTALL-SHUT-->


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
