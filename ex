select distinct customer_id from orders where order_date = (select max(order_date) from orders);
select product_name, unit_price from products where unit_price > (select unit_price from products where product_name = 'Carnarvon Tigers');
select customer_id, contact_name from customers where customer_id in(select customer_id from orders where ship_country = 'Brazil');
select customer_id from orders where order_id in(select order_id from order_details where product_id = (select product_id from products where product_name = 'Tofu') and quantity >20);
select p.product_name, od.discount, p.category_id, o.shipped_date from order_details od join products p on od.product_id = p.product_id join orders o on o.order_id = o.order_id where od.discount > 0;
select * from orders where customer_id in (select customer_id from customers where city = 'London') and ship_via = (select shipper_id from shippers where company_name = 'United Package');
