require 'test_helper'

class TestMatchbox < Test::Unit::TestCase
  context '#assert_accepts' do
    test 'successful assertion' do
      target = mock('target')
      matcher = mock('matcher') do
        expects(:matches?).with(target).returns(true)
        expects(:failure_message).returns('bad failure message')
      end
      
      assert_nothing_raised do
        assert_accepts matcher, target
      end
    end
    
    test 'unsuccessful assertion' do
      target = mock('target')
      matcher = mock('matcher') do
        expects(:matches?).with(target).returns(false)
        expects(:failure_message).returns('bad failure message')
      end
      
      assert_raise Test::Unit::AssertionFailedError do
        assert_accepts matcher, target
      end
    end
  end
  
  context '#assert_rejects' do
    test 'successful assertion' do
      target = mock('target')
      matcher = mock('matcher') do
        expects(:matches?).with(target).returns(false)
        expects(:negative_failure_message).returns('bad failure message')
      end
      
      assert_nothing_raised do
        assert_rejects matcher, target
      end
    end
    
    test 'unsuccessful assertion' do
      target = mock('target')
      matcher = mock('matcher') do
        expects(:matches?).with(target).returns(true)
        expects(:negative_failure_message).returns('bad failure message')
      end
      
      assert_raise Test::Unit::AssertionFailedError do
        assert_rejects matcher, target
      end
    end
  end
end