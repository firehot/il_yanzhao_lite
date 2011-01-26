#coding: utf-8
require 'ruby-pinyin/pinyin'
class Org < ActiveRecord::Base
  validates_presence_of :name
  acts_as_tree :order => :name
  before_save :gen_py
  #客户级别设置
  has_many :customer_level_configs

  accepts_nested_attributes_for :customer_level_configs

  def self.new_with_config(attrs)
    org = self.new(attrs)
    CustomerLevelConfig.levels.each do |key,value|
      org.customer_level_configs.build(:name => key,:from_fee => CustomerLevelConfig.system_level_range(key).begin,:to_fee => CustomerLevelConfig.system_level_range(key).end)
    end
    org
  end

  private
  def gen_py
    py = PinYin.instance
    self.py = py.to_pinyin_abbr(self.name)
  end
end
