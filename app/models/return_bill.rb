#coding: utf-8
#退货单
class ReturnBill < CarryingBill
  before_save :generate_goods_no
  validates_presence_of :to_org_id

  #根据原始运单生成退货单
  def self.new_with_ori_bill(ori_bill)
    bill = ori_bill.generate_return_bill
    bill
  end
end
