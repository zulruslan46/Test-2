import random

class Car:
    def __init__(self, economy, color, model, mileage=0, fuel=100):
        self.mileage = mileage
        self.fuel = fuel
        self.economy = economy
        self.color = color
        self.model = model

    def drive(self, distance):
        fuel_needed = (distance / 100) * self.economy
        if fuel_needed > self.fuel:
            raise ValueError("Not enough fuel to cover the distance")
        self.mileage += distance
        self.fuel -= fuel_needed

    def distance_left(self):
        return (self.fuel * 100) / self.economy

    def fuel_up(self):
        self.fuel += 20

    def __str__(self):
        return f"Car: {self.model}, Color: {self.color}, Mileage: {self.mileage} km, Fuel: {self.fuel} liters, Economy: {self.economy} liters/100km"


models = ["Toyota", "Honda", "Ford", "Chevrolet", "Nissan"]

cars = []


for _ in range(10):
    model = random.choice(models)
    color = random.choice(["Red", "Blue", "Green", "Black", "White"])
    economy = random.randint(5, 15)  # Витрати палива на 100 км
    car = Car(economy, color, model)
    cars.append(car)


for car in cars:
    try:
        car.drive(200)
        car.fuel_up()
        car.drive(100)
    except ValueError as e:
        print(e)


max_fuel_car = max(cars, key=lambda car: car.fuel)


print(max_fuel_car)