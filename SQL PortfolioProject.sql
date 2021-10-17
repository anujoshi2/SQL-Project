/* Checking the data */
select *
from PortfolioProject..County$

select *
from PortfolioProject..State$

/* Highest total houses listed in United States */
select count(distinct state_id) 
from PortfolioProject..State$

select state_id, year_sales, month_sales, total_listing_count
from PortfolioProject..State$
order by total_listing_count desc

/* To get the maximum count of house listed based on state id */
select state_id, year_sales, month_sales, max(total_listing_count) AS maximum_count
from PortfolioProject..State$
group by state_id, total_listing_count, Year_sales, Month_sales
order by total_listing_count desc

/* Maximum houses listed in california */
select state_id, year_sales, month_sales, max(total_listing_count) AS maximum_count
from PortfolioProject..State$
where state_id = 'ca'
group by state_id, total_listing_count, Year_sales, Month_sales
order by total_listing_count desc

/* Average houses listed for CA*/
select state_id, year_sales, month_sales, avg(total_listing_count) AS average_count
from PortfolioProject..State$
where state_id = 'ca'
group by state_id, total_listing_count, Year_sales, Month_sales
order by total_listing_count desc

/* Average sales in CA for the year 2021 using Having clause */
select state_id, year_sales, month_sales, avg(total_listing_count) AS average_count
from PortfolioProject..State$
where state_id = 'ca'
group by state_id, total_listing_count, Year_sales, Month_sales
having Year_sales = 2021
order by total_listing_count desc

/* Houses listed per year using case when statement */
select state_id, sum(case when year_sales = 2021 then 1 else 0 end) as house_listed
from PortfolioProject..State$
group by state_id

/* Houses listed per year using case when statement for CA */
select state_id, sum(case when year_sales = 2020 then 1 else 0 end) as house_listed
from PortfolioProject..State$
where state_id = 'ca'
group by state_id

/* Joining tables State$ and County$ */
 select std.state_id, std.state, std.total_listing_count, ctd.year_sales, ctd.month_sales,
         ctd.county_fips, ctd.county_name, ctd.county_state_id, ctd.total_listing_count,
         ctd.median_listing_price, ctd.average_listing_price, ctd.new_listing_count
 from PortfolioProject..State$ std  
 cross join PortfolioProject..County$ ctd 
 where  std.state_id = 'ca' 
 group by std.state_id, std.state, std.total_listing_count, ctd.year_sales, ctd.month_sales,
          ctd.county_fips, ctd.county_name, ctd.county_state_id, ctd.total_listing_count,
          ctd.median_listing_price, ctd.average_listing_price, ctd.new_listing_count

/* Getting count for San Diego county */
 select std.state_id, std.state, std.total_listing_count, ctd.year_sales, ctd.month_sales,
        ctd.county_fips, ctd.county_name, ctd.county_state_id, ctd.total_listing_count,
        ctd.median_listing_price, ctd.average_listing_price, ctd.new_listing_count
 from PortfolioProject..State$ std  
 cross join PortfolioProject..County$ ctd 
 where  std.state_id = 'ca' 
 group by std.state_id, std.state, std.total_listing_count, ctd.year_sales, ctd.month_sales,
          ctd.county_fips, ctd.county_name, ctd.county_state_id, ctd.total_listing_count,
          ctd.median_listing_price, ctd.average_listing_price, ctd.new_listing_count
 having ctd.county_name = 'san diego'

 /* Percentage of total houses listed in San Diego */
 select std.state_id, std.state, max(std.total_listing_count) AS total_state_listing_count, std.median_listing_price AS state_median_price, std.average_listing_price AS state_average_price, std.new_listing_count AS state_new_listing_count,
        ctd.year_sales, ctd.month_sales, ctd.county_fips, ctd.county_name, ctd.county_state_id, ctd.total_listing_count AS total_county_listing_count, 
format ((ctd.total_listing_count/std.total_listing_count), 'P0') AS percent_listing_count,
        ctd.median_listing_price AS median_county_price, ctd.average_listing_price AS average_county_listing_price, ctd.new_listing_count AS new_county_listing_count
 from PortfolioProject..State$ std  
 cross join PortfolioProject..County$ ctd 
 where  std.state_id = 'ca' 
  group by std.state_id, std.state, std.total_listing_count, std.median_listing_price, std.average_listing_price, std.new_listing_count,
           ctd.year_sales, ctd.month_sales, ctd.county_fips, ctd.county_name, ctd.county_state_id, ctd.total_listing_count,
           ctd.median_listing_price, ctd.average_listing_price, ctd.new_listing_count
 having ctd.county_name = 'san diego' 
 order by total_state_listing_count desc 

 /* Percentage of total houses listed in San Diego for the year 2021 */
 select std.state_id, std.state, max(std.total_listing_count) AS total_state_listing_count, std.median_listing_price AS state_median_price, std.average_listing_price AS state_average_price, std.new_listing_count AS state_new_listing_count,
        ctd.year_sales, ctd.month_sales, ctd.county_fips, ctd.county_name, ctd.county_state_id, ctd.total_listing_count AS total_county_listing_count, 
format ((ctd.total_listing_count/std.total_listing_count), 'P0') AS percent_listing_count,
        ctd.median_listing_price AS median_county_price, ctd.average_listing_price AS average_county_listing_price, ctd.new_listing_count AS new_county_listing_count
 from PortfolioProject..State$ std  
 cross join PortfolioProject..County$ ctd 
 where  std.state_id = 'ca' 
  group by std.state_id, std.state, std.total_listing_count, std.median_listing_price, std.average_listing_price, std.new_listing_count,
           ctd.year_sales, ctd.month_sales, ctd.county_fips, ctd.county_name, ctd.county_state_id, ctd.total_listing_count,
           ctd.median_listing_price, ctd.average_listing_price, ctd.new_listing_count
 having ctd.county_name = 'san diego' And ctd.year_sales = 2021
 order by total_state_listing_count desc 




