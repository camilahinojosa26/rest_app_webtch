# Create dishes
d1 = Dish.create(name: 'Entradas')
d2 = Dish.create(name: 'Platos Principales')
d3 = Dish.create(name: 'Postres')

# Create restaurants
r1 = Restaurant.create(name: 'El Paseo', address: 'Av. Libertador, Caracas')
r2 = Restaurant.create(name: 'La Casa Camila', address: 'Manquehue, Santiago')
r3 = Restaurant.create(name: 'Patacón con Todo', address: 'Av. Bolívar, Valencia')
r4 = Restaurant.create(name: 'Barquito del Puerto', address: 'Calle Sucre, Puerto la Cruz')
r5 = Restaurant.create(name: 'El Mesón de Chuao', address: 'Calle Principal, Chuao')

# Create items
Item.create(name: 'Arepas', price: 1500, callories: 300, dish_id: d1.id , restaurant_id: r1.id)
Item.create(name: 'Cachapas', price: 2000, callories: 450, dish_id: d2.id , restaurant_id: r3.id)
Item.create(name: 'Empanadas', price: 1200, callories: 250, dish_id: d2.id , restaurant_id: r3.id)
Item.create(name: 'Tequeños', price: 1000, callories: 200, dish_id: d1.id , restaurant_id: r2.id)
Item.create(name: 'Pabellón Criollo', price: 3500, callories: 700, dish_id: d2.id , restaurant_id: r2.id)
Item.create(name: 'Pollo a la Brasa', price: 2800, callories: 550, dish_id: d2.id , restaurant_id: r1.id)
Item.create(name: 'Asado Negro', price: 3200, callories: 650, dish_id: d2.id , restaurant_id: r3.id)
Item.create(name: 'Quesillo', price: 1500, callories: 400, dish_id: d3.id , restaurant_id: r1.id)
Item.create(name: 'Bienmesabe', price: 1800, callories: 450, dish_id: d3.id , restaurant_id: r3.id)
Item.create(name: 'Tres Leches', price: 2000, callories: 500, dish_id: d3.id , restaurant_id: r2.id)
