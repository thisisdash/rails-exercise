require_relative "../test_helper.rb"
require 'minitest/autorun'

class RankTest < Minitest::Test
  describe "score precision" do
    it "correctly stores the number with 1 decimal precision" do
      rank = Rank.create(score_from: 3.123, score_to: 5.567, name: "A score")

      assert_equal(3.1, rank.score_from)
      assert_equal(5.5, rank.score_to)
    end
  end

  describe "test_overlapping_scores" do
    it "it does not store if the score overlaps" do
      existing_rank = Rank.create(score_from: 3, score_to: 5, name: "A score")
      new_rank = Rank.new(score_from: 1, score_to: 4, name: "Wrong score")

      assert_equal(false, new_rank.valid?)
    end
  end
end
