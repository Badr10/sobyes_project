
create table productRevenueBasket as
SELECT `ITEM_SK`,sum(`SELLING_RETAIL_AMT`) as revenue,
count(distinct `TRANSACTION_RK`) as baskets from dataset01.sales219
group by `ITEM_SK`

create table productcluster as
SELECT * FROM `productRevenueBasket`
ORDER BY `productRevenueBasket`.`revenue`  DESC
limit 0,2000