import datetime

from utils import Animal
from conect_db import Databases

databases = Databases()


def create_animal(name, date_of_bitrh, commands, vid):
    animal = Animal(name, date_of_bitrh)
    for command in commands.split(','):
        animal.add_command(command)
    databases.add_animals(animal.name, animal.date_of_bitrh, animal.commands, vid)


def read_animal(name_table: str):
    for i in databases.read_table(f"SELECT * FROM {name_table}"):
        print(f"| {i.get('id')} | {i.get('name'):<10} | {i.get('dete_of_bitrh')} | {i.get('comands'):<25} | "
              f"{i.get('create_date').date().strftime('%Y-%m-%d')} |"
              f" {i.get('update_date').date().strftime('%Y-%m-%d') if i.get('update_date') else 'не изменялся'} |")


def update_animal(vid, animal_number):
    obj = databases.read_table(f"SELECT * FROM {vid} WHERE id = {animal_number}")[0]
    print(
        f"| id: {obj.get('id')} | name: {obj.get('name'):<10} | dete_of_bitrh: {obj.get('dete_of_bitrh')} | comands: {obj.get('comands'):<25} | ")
    select = input("[1]-добавить команду\n[2]-изменить команду\n>>> ")
    match int(select):
        case 1:
            temp_commands = []
            for val in obj.get('comands').split(','):
                temp_commands.append(val)
            temp_commands.append(input("Добавте команду >>> "))
            databases.update_table(
                f"UPDATE {vid} SET comands = '{', '.join(temp_commands)}' WHERE id = {animal_number}")
        case 2:
            value = input("Введите команду >>> ")
            databases.update_table(f"UPDATE {vid} SET comands = '{value}' WHERE id = {animal_number}")


def delete_animal():
    pass


def vid_select(vid):
    match int(vid):
        case 1:
            return 'cat'
        case 2:
            return 'dog'
        case 3:
            return 'hamser'
        case 4:
            return 'camel'
        case 5:
            return 'donkey'
        case 6:
            return 'horse'


def commands_pars(commands):
    pass
