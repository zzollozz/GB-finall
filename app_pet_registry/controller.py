from settings import MAIN_MENU
from views import create_animal, read_animal, vid_select, update_animal

while True:
    try:
        print(MAIN_MENU)
        choice = input(" >>> ")
        match int(choice):
            case 1:
                # [1] Создание нового животного
                name = input('Укажите имя животного: ')
                date_of_bitrh = input('Укажите день рождения /YYYY-MM-DD)/: ')
                commands = input('Какие команды выполняет животное: ')
                print('Вид животного:\n[1]-cat [2]-dog [3]-hamster [4]-camel [5]-donkey [6]-horse')
                vid = input(" >>> ")
                create_animal(name, date_of_bitrh, commands, vid_select(vid))
            case 2:
                # [2] Просмотр животных по виду
                print('Вид животного:\n[1]-cat [2]-dog [3]-hamster [4]-camel [5]-donkey [6]-horse')
                vid = input(" >>> ")
                read_animal(vid_select(vid))
            case 3:
                # [3] Работа с животным -> Обучить питомца новой команде -> Увидеть список команд для питомца
                print('Вид животного:\n[1]-cat [2]-dog [3]-hamster [4]-camel [5]-donkey [6]-horse')
                vid = vid_select(input(" >>> "))
                read_animal(vid)
                animal = input("Укажите Номер >>> ")
                update_animal(vid, animal)

            case 4:
                print('Выход из приложения')
                break
    except Exception as e:
        print(f"Молодец все сломал\n==> {e}")
