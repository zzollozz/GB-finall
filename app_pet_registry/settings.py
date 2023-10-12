from environs import Env

env = Env()
env.read_env()

REMOTE_SERVER = env('REMOTE_SERVER')
REMOTE_SERVER_NAME = env('REMOTE_SERVER_NAME')
REMOTE_SERVER_PASS = env('REMOTE_SERVER_PASS')
DATABASES_PASS = env('DATABASES_PASS')


MAIN_MENU = """
+---------------------------------------+
|          -= М Е Н Ю =-                |
|    [1] Завести нового питомца         |
|    [2] Просмотр животных по виду      |
|    [3] Работа с животным              |
|    [4] Выйти                          |
+---------------------------------------+
"""