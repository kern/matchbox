# Test::Unit assertions for RSpec and Shoulda matchers.
# 
# I created this since:
# 
# * I like assertions, not the Shoulda "should" statements.
# * I want to use `shoulda-matchers` in my Rails project.
# * I'm in love with the simplicity of the contest gem.
# 
# These methods are based upon those found in shoulda-context.
# 
# With shoulda-matchers, it can be used like so:
# 
#     class PostTest < Test::Unit::TestCase
#       def test_active_record_relations
#         post = Post.new
#         assert_accepts belong_to(:topic), post
#       end
#     end
module Matchbox
  # Asserts that a matcher matches a given target.
  # 
  # @param [#failure_message && #matches?] matcher
  # @param [Object] target
  # @raises [Test::Unit::AssertionFailedError] if the assertion fails
  def assert_accepts(matcher, target)
    matched = matcher.matches?(target)
    assert_block(matcher.failure_message) { matched }
  end
  
  # Asserts that a matcher does not match a given target.
  # 
  # @param [#negative_failure_message && #matches?] matcher
  # @param [Object] target
  # @raises [Test::Unit::AssertionFailedError] if the assertion fails
  def assert_rejects(matcher, target)
    matched = matcher.matches?(target)
    assert_block(matcher.negative_failure_message) { !matched }
  end
end

class Test::Unit::TestCase
  include Matchbox
end