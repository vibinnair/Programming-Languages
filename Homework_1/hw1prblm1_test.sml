val is_date_older_year_1 = is_older ((2014,10,03), (2013,10,03)) = false;
val is_date_older_year_2 = is_older ((2013,10,03), (2014,10,03)) = true;
val is_date_older_same = is_older ((2013,10,02), (2013,10,02))  = false;
val is_date_older_month_1 = is_older ((2014,09,03), (2014,10,03)) = true;
val is_date_older_month_2 = is_older ((2014,10,03), (2014,09,03)) = false;
val is_date_older_day_1 = is_older ((2014,10,01), (2014,10,10)) = true;
val is_date_older_day_2 = is_older ((2014,10,10), (2014,10,07)) = false;


val number_in_month_1 = number_in_month([], 2) = 0;
val number_in_month_2 = number_in_month([(2014, 10, 12)], 4) = 0;
val number_in_month_3 = number_in_month([(2014, 10, 12)], 10) = 1;
val number_in_month_4 = number_in_month([(2014, 10, 12), (2013, 11, 03)], 10) = 1;
val number_in_month_5 = number_in_month([(2014,10,12), (2014,11,12), (2014,10,08)], 10) = 2;
