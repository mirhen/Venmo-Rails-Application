class User < ApplicationRecord

  has_many :sent_transactions, class_name: "Transaction", foreign_key: :from_user_id

end
