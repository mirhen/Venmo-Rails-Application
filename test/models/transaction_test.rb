require 'test_helper'

class TransactionTest < ActiveSupport::TestCase

  test "can reference sender and receiver" do
    alice = User.create(name: "Alice A", email:"alice@alice.com", handle:"alice", balance: 99.99)
    bob = User.create(name: "Bob B", email:"bob@bob.com", handle:"bob", balance: 199.99)

    transaction = Transaction.create(from_user_id:alice.id, to_user_id:bob.id)

    assert_equal alice, transaction.sender
    assert_equal bob, transaction.receiver

  end
end
