# -*- coding: utf-8 -*-
=begin rdoc
Numeric extensions to calculate round numbers.
=end

class Numeric

  # Conceptually, ceil is expected to apply to floating point numbers.
  # However it can actually be applied to pretty much any Numeric object.
  # For example, one could ceil an Integer to the nearest kilo.
  #
  # See Float#ceil_at.

  def ceil_at(*args)
    to_f.ceil_at(*args)
  end

  # See Float#ceil_to.

  def ceil_to(*args)
    to_f.ceil_to(*args)
  end

  # Conceptually, floor is expected to apply to floating point numbers.
  # However it can actually be applied to pretty much any Numeric object.
  # For example, one could floor an Integer to the nearest kilo.
  #
  # See Float#floor_at.

  def floor_at(*args)
    to_f.floor_at(*args)
  end

  # See Float#floor_to.

  def floor_to(*args)
    to_f.floor_to(*args)
  end

  # Conceptually, round is expected to apply to floating point numbers.
  # However it can actually be applied to pretty much any Numeric object.
  # For example, one could round an Integer to the nearest kilo.
  #
  # See Float#round_at.

  def round_at(*args)
    to_f.round_at(*args)
  end

  # See Float#round_to.

  def round_to(*args)
    to_f.round_to(*args)
  end

  # Conceptually, truncate is expected to apply to floating point numbers.
  # However it can actually be applied to pretty much any Numeric object.
  # For example, one could truncate an Integer to the nearest kilo.
  #
  # See Float#truncate_at.

  def truncate_at(*args)
    to_f.truncate_at(*args)
  end

  # See Float#truncate_to.

  def truncate_to(*args)
    to_f.truncate_to(*args)
  end

end
