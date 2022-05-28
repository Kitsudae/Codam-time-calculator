library("lubridate")

my_time <- c("4:14:15"      #monday
             , "3:23:49"    #tuesday
             , "4:21:42"    #wednesday
             , "0:40:29"    #thursday
             , "5:51:44"    #friday
             , "2:32:45")   #saturday
my_time_hms <- hms(my_time) 
my_time_seconds <- period_to_seconds(my_time_hms)  
my_time_seconds_sum <- sum(my_time_seconds)
my_time_sum <- seconds_to_period(my_time_seconds_sum)

if (my_time_seconds_sum < 86400){
  time_left_seconds = (86400 - my_time_seconds_sum)
  my_time_left = seconds_to_period(time_left_seconds) 
  cat("Dear, you still need to spend at Codam", toString(my_time_left), "more this week.")
} else
  cat("Hey, beauty, you've done it! Have a beautiful weekend!")
