# -*- coding: utf-8 -*-
=begin rdoc
Please see README
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

class Float

  # Ceil to the given decimal position.
  #
  #   4.555.ceil_at(0)  #=> 5.0
  #   4.555.ceil_at(1)  #=> 4.6
  #   4.555.ceil_at(2)  #=> 4.56
  #   4.555.ceil_at(3)  #=> 4.555
  #
  # CREDIT: Trans & Joel Parker Henderson

  def ceil_at( d ) #d=0
    (self * (10 ** d)).ceil.fdiv (10 ** d)
  end

  # Ceils to the nearest _n_th degree.
  #
  #   4.555.ceil_to(1)     #=> 5.0
  #   4.555.ceil_to(0.1)   #=> 4.6
  #   4.555.ceil_to(0.01)  #=> 4.56
  #   4.555.ceil_to(0)     #=> 4.555
  #
  # CREDIT: Trans & Joel Parker Henderson

  def ceil_to( n ) #n=1
    return self if n == 0
    (self * (1.0 / n)).ceil.fdiv (1.0 / n)
  end

  # Floor to the given decimal position.
  #
  #   4.555.floor_at(0)  #=> 4.0
  #   4.555.floor_at(1)  #=> 4.5
  #   4.555.floor_at(2)  #=> 4.55
  #   4.555.floor_at(3)  #=> 4.555
  #
  # CREDIT: Trans & Joel Parker Henderson

  def floor_at( d ) #d=0
    (self * (10 ** d)).floor.fdiv (10 ** d)
  end

  # Floors to the nearest _n_th degree.
  #
  #   4.555.floor_to(1)     #=> 4.0
  #   4.555.floor_to(0.1)   #=> 4.5
  #   4.555.floor_to(0.01)  #=> 4.55
  #   4.555.floor_to(0)     #=> 4.555
  #
  # CREDIT: Trans & Joel Parker Henderson

  def floor_to( n ) #n=1
    return self if n == 0
    (self * (1.0 / n)).floor.fdiv (1.0 / n)
  end

  # Round to the given decimal position.
  #
  #   4.555.round_at(0)  #=> 5.0
  #   4.555.round_at(1)  #=> 4.6
  #   4.555.round_at(2)  #=> 4.56
  #   4.555.round_at(3)  #=> 4.555
  #
  # CREDIT: Trans & Joel Parker Henderson

  def round_at( d ) #d=0
    (self * (10 ** d)).round.fdiv (10 ** d)
  end

  # Rounds to the nearest _n_th degree.
  #
  #   4.555.round_to(1)     #=> 5
  #   4.555.round_to(0.1)   #=> 4.6
  #   4.555.round_to(0.01)  #=> 4.56
  #   4.555.round_to(0)     #=> 4.555
  #
  # CREDIT: Trans & Joel Parker Henderson

  def round_to( n ) #n=1
    return self if n == 0
    (self * (1.0 / n)).round.fdiv (1.0 / n)
  end

  # Truncate to the given decimal position.
  #
  #   4.555.truncate_at(0)  #=> 4.0
  #   4.555.truncate_at(1)  #=> 4.5
  #   4.555.truncate_at(2)  #=> 4.55
  #   4.555.truncate_at(3)  #=> 4.555
  #
  # CREDIT: Trans & Joel Parker Henderson

  def truncate_at( d ) #d=0
    (self * (10 ** d)).truncate.fdiv (10 ** d)
  end

  # Truncates to the nearest _n_th degree.
  #
  #   4.555.truncate_to(1)     #=> 4.0
  #   4.555.truncate_to(0.1)   #=> 4.5
  #   4.555.truncate_to(0.01)  #=> 4.55
  #   4.555.truncate_to(0)     #=> 4.555
  #
  # CREDIT: Trans & Joel Parker Henderson

  def truncate_to( n ) #n=1
    return self if n == 0
    (self * (1.0 / n)).truncate.fdiv (1.0 / n)
  end

end
