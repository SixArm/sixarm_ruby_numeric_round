# -*- coding: utf-8 -*-
=begin rdoc
Float extensions to calculate round numbers.
=end

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
