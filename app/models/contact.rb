class Contact < ActiveRecord::Base
  belongs_to :client
  delegate :company, :email, :phone, :account_manager, to: :client, prefix: true
  validates :client_id, :name, :job_title, :phone, :email, :account_manager, presence: true
end
