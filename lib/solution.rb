def clock_angle(time)
    # code your solution here
    hour, min = time.split(":").map{|s| s.to_f}
    min_angle = min * 6
    hour_angle = (hour * 30) + (0.5 * min)
    
    greatest_angle = min_angle > hour_angle ? min_angle : hour_angle
    least_angle = min_angle > hour_angle ? hour_angle : min_angle
    if greatest_angle > 180.01 && least_angle == 0
      greatest_angle = greatest_angle - 180
    end
    result = greatest_angle - least_angle
    if result == 360
      result = 0 
    end
    return result
    
end
