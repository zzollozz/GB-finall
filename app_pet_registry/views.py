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
    for i in databases.read_table(name_table):
        print(f"| {i.get('id')} | {i.get('name'):<10} | {i.get('dete_of_bitrh')} | {i.get('comands'):<25} | "
              f"{i.get('create_date').date().strftime('%Y-%m-%d')} |"
              f" {i.get('update_date').date().strftime('%Y-%m-%d') if i.get('update_date') else 'не изменялся'} |")


def update_animal():
    pass

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