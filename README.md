# matchbox - use RSpec and Shoulda matchers in Test::Unit [![StillMaintained Status](http://stillmaintained.com/CapnKernul/matchbox.png)](http://stillmaintained.com/CapnKernul/matchbox) [![Build Status](http://travis-ci.org/CapnKernul/matchbox.png)](http://travis-ci.org/CapnKernul/matchbox) #

Matchbox allows you to use RSpec and Shoulda matchers as regular, old
`Test::Unit` assertions.

## Installation ##

Without bundler:

    gem install matchbox

With bundler:

    gem 'matchbox'

## Usage ##

Just include the RSpec matchers into the `TestCase` and they can be used as seen
below. This example uses methods found in
[shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers).

    class PostTest < Test::Unit::TestCase
      def test_active_record_relations
        post = Post.new
        assert_accepts belong_to(:topic), post
      end
    end

## Note on Patches/Pull Requests ##

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version unintentionally.
* Commit, but do not mess with the `Rakefile`. If you want to have your own version, that is fine but bump the version in a commit by itself in another branch so I can ignore it when I pull.
* Send me a pull request. Bonus points for git flow feature branches.

## Resources ##

* [GitHub Repository](https://github.com/CapnKernul/matchbox)
* [Documentation](http://rubydoc.info/github/CapnKernul/matchbox)

## License ##

Matchbox is licensed under the MIT License. See `LICENSE` for details.