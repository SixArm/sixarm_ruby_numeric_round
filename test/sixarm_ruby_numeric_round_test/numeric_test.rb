# -*- coding: utf-8 -*-
require "sixarm_ruby_numeric_round_test"

describe Numeric do

  describe "#ceil_at" do

    it "works" do
      4.555.ceil_at(0).must_equal 5.0
      4.555.ceil_at(1).must_equal 4.6
      4.555.ceil_at(2).must_equal 4.56
      4.555.ceil_at(3).must_equal 4.555
    end

  end

  describe "#ceil_to" do

    it "works" do
      4.555.ceil_to(1).must_equal 5.0
      4.555.ceil_to(0.1).must_equal 4.6
      4.555.ceil_to(0.01).must_equal 4.56
      4.555.ceil_to(0).must_equal 4.555
    end

  end

  describe "#floor_at" do

    it "works" do
      4.555.floor_at(0).must_equal 4.0
      4.555.floor_at(1).must_equal 4.5
      4.555.floor_at(2).must_equal 4.55
      4.555.floor_at(3).must_equal 4.555
    end

  end

  describe "#floor_to" do

    it "works" do
      4.555.floor_to(1).must_equal 4.0
      4.555.floor_to(0.1).must_equal 4.5
      4.555.floor_to(0.01).must_equal 4.55
      4.555.floor_to(0).must_equal 4.555
    end

  end

  describe "#round_at" do

    it "works" do
      4.555.round_at(0).must_equal 5.0
      4.555.round_at(1).must_equal 4.6
      4.555.round_at(2).must_equal 4.56
      4.555.round_at(3).must_equal 4.555
    end

  end

  describe "#round_to" do

    it "works" do
      4.555.round_to(1).must_equal 5
      4.555.round_to(0.1).must_equal 4.6
      4.555.round_to(0.01).must_equal 4.56
      4.555.round_to(0).must_equal 4.555
    end

  end

  describe "#truncate_at" do

    it "works" do
      4.555.truncate_at(0).must_equal 4.0
      4.555.truncate_at(1).must_equal 4.5
      4.555.truncate_at(2).must_equal 4.55
      4.555.truncate_at(3).must_equal 4.555
    end

  end

  describe "#truncate_to" do

    it "works" do
      4.555.truncate_to(1).must_equal 4.0
      4.555.truncate_to(0.1).must_equal 4.5
      4.555.truncate_to(0.01).must_equal 4.55
      4.555.truncate_to(0).must_equal 4.555
    end

  end

end







