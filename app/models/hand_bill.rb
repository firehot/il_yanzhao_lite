#coding: utf-8
#手工运单
class HandBill < CarryingBill
  validates_presence_of :to_org_id
  before_save :cal_hand_fee
end
