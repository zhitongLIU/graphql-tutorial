require 'test_helper'

module Resolvers
  class  CreateLinkTest < ActiveSupport::TestCase
    def perform(args = {})
      Resolvers::CreateLink.new.call(nil, args, {})
    end

    test 'creating new link' do
      link = perform(
        url: 'http://example.com',
        description: 'description'
      )

      assert link.persisted?
      assert_equal 'description', link.description
      assert_equal 'http://example.com', link.url
    end
  end
end
