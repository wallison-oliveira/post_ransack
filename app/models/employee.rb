# == Schema Information
#
# Table name: employees
#
#  id           :integer          not null, primary key
#  age          :integer
#  city         :string
#  email        :string
#  house_number :integer
#  name         :string
#  neighborhood :string
#  state        :string
#  street       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Employee < ApplicationRecord
end
