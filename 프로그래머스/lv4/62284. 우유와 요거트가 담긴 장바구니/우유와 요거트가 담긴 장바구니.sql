-- 코드를 입력하세요
SELECT cart_id
FROM cart_products
WHERE cart_id IN (SELECT cart_ID FROM cart_products WHERE name = 'Milk')
AND name = 'Yogurt'
ORDER BY cart_id

# SELECT A.cart_id 
# FROM
#     (SELECT cart_id, name FROM cart_products
#     WHERE name = 'Yogurt') A
# INNER JOIN
#     (SELECT cart_id, name FROM cart_products
#     WHERE name = 'Milk') B 
#     ON A.cart_id = B.cart_id
# ORDER BY 1;

# 셀프조인
# SELECT distinct A.CART_ID
# from CART_PRODUCTS A, CART_PRODUCTS B
# where A.CART_ID = B.CART_ID and A.NAME = "Milk" and B.NAME = "Yogurt" 
# order by A.CART_ID