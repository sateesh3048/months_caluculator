require "months_caluculator/version"

module MonthsCaluculator
  # Your code goes here...
  def self.description
    p "To Caluculate Exact Number of Months We Will Use this gem"
  end
  
  def self.get_exact_number_of_months(from_date, to_date)
    number_of_months = 0
    if from_date.blank? && to_date.blank?
      raise "Please Enter From and To Dates"
    elsif from_date.blank?
      raise "Please Enter From Date"
    elsif to_date.blank?
      raise "Please Enter To Date"
    elsif from_date.present?  && to_date.present?
      from_date = from_date.to_date
      to_date =   to_date.to_date
      number_of_months = (to_date.year*12+to_date.month) - (from_date.year*12+from_date.month)
      end_date = from_date.to_date + number_of_months.months
      number_of_days =  to_date.day-end_date.day
      # If the number of days in month is more than 15 then we will assume it as one month and we add it below.
      number_of_months = number_of_months + 1  if number_of_days >=15
    end
    number_of_months 
  end
end
