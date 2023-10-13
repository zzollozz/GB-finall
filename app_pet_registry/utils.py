class Animal:
    count = 0

    def __init__(self, name, date_of_bitrh):
        self.name = name
        self.date_of_bitrh = date_of_bitrh
        self.commands = []
        Animal.count += 1

    def __str__(self):
        return f"Имя: {self.name} Дата рождения: {self.date_of_bitrh} Выполняемые команды: {self.commands}"

    def add_command(self, command):
        if command not in self.commands:
            self.commands.append(command)
        else:
            print("Команда уже добавлена")

    def execute_commands(self, command):
        print(f"{self.name} выполняет команду {command}")


class Human_friends(Animal):
    pass


class Vyuchnie_zivotvie(Animal):
    pass


if __name__ == "__main__":
    cat = Animal('Жужа', '2000-10-19')
    print(cat)
