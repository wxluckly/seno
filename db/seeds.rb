# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

%w{开盘庆典 项目推广 奠基仪式 公司年会 颁奖典礼 公关活动 营销策略 SENO新闻 作品、成功案例}.each do |i|
  Category.create(name: i)
end