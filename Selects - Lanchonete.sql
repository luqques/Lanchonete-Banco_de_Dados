use lanchonete;

select * from produto;
select * from pedido;
select * from pedido_produto;
select * from bairro;
select * from cliente;
select * from pagamento;

#######################################

# 1. Ticket médio por produto.
create view TICKET_MEDIO as
select pr.nome as produto, avg(pp.preco_pago) as ticket_medio
from produto pr
join pedido_produto pp
	on pr.id = pp.produto_id
group by produto;
 
#######################################

# 2. Valor que cada cliente gastou na loja.
select c.nome as cliente, sum(ped.valor_final) as valor_total
from cliente c
join pedido ped
	on ped.cliente_id = c.id
group by cliente;
 
#######################################

# 3. Total de compras por forma de pagamento.
select pag.tipo as tipo_pagamento, count(ped.id) as quantidade_pedidos, sum(ped.valor_final) as valor_total
from pagamento pag
join pedido ped
	on ped.pagamento_id = pag.id
group by tipo_pagamento;
 
#######################################

#4. Total de compras por bairro.
select b.nome as bairro, count(ped.id) as quantidade_compras, sum(ped.valor_final) as valor_total
from pedido ped
join cliente c
	on c.id = ped.cliente_id
join bairro b
	on b.id = c.bairro_id
group by bairro;
    

    


