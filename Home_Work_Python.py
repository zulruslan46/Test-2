import random

class Car:

    def __init__(self, color, model, economy):
        self.color = color
        self.model = model
        self.economy = economy
        self.mileage = 0
        self.fuel = 100

    def drive(self, distance):
        fuel_needed = distance * self.economy / 100
        if fuel_needed > self.fuel:
            print("Not enough fuel!")
        else:
            self.mileage += distance
            self.fuel -= fuel_needed

    def distance_left(self):
        return self.fuel / self.economy * 100

    def fuel_up(self):
        self.fuel += 20

models = ["Toyota", "Honda", "Ford", "Chevrolet", "Nissan"]
colors = ["red", "blue", "green", "black", "white"]

cars = []
for i in range(10):
    model = random.choice(models)
    color = random.choice(colors)
    economy = random.randint(5, 20) # витрати палива на 100 км
    car = Car(color, model, economy)
    cars.append(car)

max_fuel = 0
max_fuel_car = None
for car in cars:
    car.drive(200)
    car.fuel_up()
    car.drive(100)
    if car.fuel > max_fuel:
        max_fuel = car.fuel
        max_fuel_car = car

print("Car with the most fuel left:")
print("Model:", max_fuel_car.model)
print("Color:", max_fuel_car.color)
print("Fuel left:", max_fuel_car.fuel)
print("Distance left:", max_fuel_car.distance_left())