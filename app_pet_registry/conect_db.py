# pip install pymysql
import pymysql
from sshtunnel import SSHTunnelForwarder

from settings import REMOTE_SERVER, REMOTE_SERVER_NAME, REMOTE_SERVER_PASS, DATABASES_PASS


class Databases:
    def __init__(self):
        remote_server = REMOTE_SERVER
        remote_server_name = REMOTE_SERVER_NAME
        remote_server_pass = REMOTE_SERVER_PASS
        databases_pass = DATABASES_PASS

        try:
            tunnel = SSHTunnelForwarder((
                remote_server, 22),
                ssh_password=remote_server_pass,
                ssh_username=remote_server_name,
                remote_bind_address=('localhost', 3306)
            )

            tunnel.start()

            self.connection = pymysql.connect(
                host='127.0.0.1',
                user='root',
                passwd=databases_pass,
                port=tunnel.local_bind_port,
                database='people_friends',
                cursorclass=pymysql.cursors.DictCursor
            )

        except Exception as ex:
            print(f"В соединении отказано... ==> {ex}")

    def list_of_tables_db(self):
        cursor = self.connection.cursor()
        cursor.execute(f"SHOW TABLES;")
        return cursor.fetchall()

    def add_animals(self, name, date_of_bitrh, commands, vid):
        command = ",".join(commands)
        insert_query = f"INSERT INTO {vid} (name, dete_of_bitrh, comands) VALUES ('{name}', '{date_of_bitrh}', '{command}')"
        cursor = self.connection.cursor()
        cursor.execute(insert_query)
        self.connection.commit()

    def read_table(self, table):
        select_all_rows = f"SELECT * FROM {table}"
        cursor = self.connection.cursor()
        cursor.execute(select_all_rows)
        return cursor.fetchall()


    # def process_cursor(self, query):
    #     cursor = self.connection.cursor()
    #     return cursor.execute(query)

if __name__ == "__main__":

    a = Databases()
    # for i in a.list_of_tables_db():
    #     print(i)

    # a.add_animals('Zuc', '2000-02-02', 'подает голос', 'cat')

    for i in a.read_table('cat'):
        print(i)
