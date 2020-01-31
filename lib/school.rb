class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names


  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def end_time
    # hour = @start_time.to_i + @hours_in_school_day
    # hour.to_s + ':00'

    (@start_time.to_i + @hours_in_school_day).to_s + ':00'
  end

  def is_full_time?
    # if @hours_in_school_day > 4
    #   true
    # else
    #   false
    # end

    @hours_in_school_day > 4
  end

  def standard_student_names
    # capitalized_names = []
    # @student_names.each do |student_name|
    #   capitalized_names << student_name.capitalize
    # end
    # capitalized_names

    @student_names.map do |name|
      name.capitalize
    end
  end
end
