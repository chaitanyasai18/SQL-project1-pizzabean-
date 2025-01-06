# --CREATE DATABASE
create database pizzabean;

# --CREATE TABLES
create table orders (
	order_id int not null,
	order_date date not null,
	order_time time not null,
	primary key(order_id)
);

create table order_details ( 
	order_details_id int not null, 
	order_id int not null, 
	pizza_id text not null, 
	quantity int not null,
	primary key(order_details_id),
	foreign key(order_id) references orders(order_id),
	foreign key(pizza_id) references pizzas(pizza_id) 
);


create table pizzas(
	pizza_id int not null,
	pizza_type_id text not null,
	size text not null,
	price double not null,
	primary key(pizza_id),
	foreign key(pizza_type_id) references pizza_types(pizza_type_id)
);


create table pizza_types(
	pizza_type_id text not null,
	name text not null,
	category text not null,
	ingredients text not null,
	primary key(pizza_type_id)
);

# --TOTAL ORDERS
select count(order_id) as total_orders from orders;

# --TOTAL REVENUE GENERATED
Select
ROUND(SUM(order_details.quantity * pizzas.price),2) As total_sales
From
order_details
JOIN
pizzas ON pizzas.pizza_id=order_details.pizza_id;

# --TOTAL ITEMS
select sum(quantity) as total_items from order_details;

# --AVERAGE ORDER VALUE
select sum(p.price * od.quantity)/count(distinct(od.order_id)) as average from pizzas p, order_details od 
where p.pizza_id = od.pizza_id;

# --ORDERS BY PIZZA TYPE
select pt.name,sum(od.quantity) as sum from pizzas p 
left join order_details od on p.pizza_id = od.pizza_id 
left join pizza_types pt on p.pizza_type_id = pt.pizza_type_id
group by pt.name order by sum desc;

# --TOP 5 PIZZAS ORDERED
Select 
pizza_types.name, SUM(order_details.quantity) AS quantity
From
pizza_types
JOIN
pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN
order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types. name
ORDER BY quantity DESC
LIMIT 5; 

# --MOST ORDERED SIZE
select p.size,sum(od.quantity) as sum from pizzas p,order_details od where p.pizza_id = od.pizza_id 
group by p.size order by sum desc limit 1;


