require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user can look up sent transactions" do
    alice = User.create(name:"Alice")
    bob = User.create(name:"Bob")

    Transaction.create(from_user_id: alice.id, to_user_id: bob.id)
    alice.reload

    assert_equal 1, alice.sent_transactions.size
  end
end
