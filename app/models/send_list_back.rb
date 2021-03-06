#coding: utf-8
class SendListBack < ActiveRecord::Base
  include SendListModule
  belongs_to :org
  belongs_to :sender
  belongs_to :user
  has_many :send_list_lines
  has_many :carrying_bills,:through => :send_list_lines,:order => "from_org_id ASC,bill_date ASC,bill_no ASC"

  default_value_for :bill_date do
    Date.today
  end
  validates_presence_of :org_id,:sender_id
end
