fun is_year_same (year1: int, year2: int) = year1 = year2 
fun is_year_older (year1: int, year2 : int) = year1 < year2
fun is_month_older (month1 :int, month2 : int) = month1 < month2
fun is_day_older (day1 :int, day2 :int) = day1 < day2

fun is_older (first_date : int*int*int, second_date : int*int*int) = 
   if (is_year_same (#1 first_date, #1 second_date)) 
   then is_month_older (#2 first_date, #2 second_date) orelse is_day_older (#3 first_date, #3 second_date)
   else is_year_older (#1 first_date, #1 second_date)


fun month_count (date:int*int*int, month :int) = 
    if (#2 date = month) 
    then 1
    else 0

fun number_in_month(dates:(int*int*int) list, month:int) = 
    if  null dates
    then 0
    else month_count(hd dates, month) + number_in_month(tl dates, month)



