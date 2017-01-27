# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



jobs_info = [["网页工程师","实现网页端的应用程序开发"],["安卓工程师","进行安卓操作系统方面应用的开发，包括手机，平版等方面"],["IOS工程师","进行IOS操作系统方面应用的开发"],["前端开发工程师","主要进行前端的开发，
  美化等"],["后台开发","主要实现功能方面的应用"]]


puts "这个种子档案自动建立一个admin帐号, 并且创建10个public jobs, 以及10个hidden jobs"

create_account = User.create([email: 'admin@gmail.com', password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts "Admin account created."

create_jos = for i in 1..10 do
  job_test = jobs_info[rand(0..4)]
  Job.create!([title: job_test[0], description: job_test[1], wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "false"])
end
puts "10 Public jobs created."

create_jos = for i in 1..10 do
  job_test = jobs_info[rand(0..4)]
  Job.create!([title: job_test[0], description: job_test[1], wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "true"])
end
puts "10 Hidden jobs created."
