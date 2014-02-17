class Job < ActiveRecord::Base
  attr_accessible :company_name, :deadline, :link, :numb, :position, :province, :qualification, :start_date
end
