import mariadb
import sys
import shutil
from datetime import datetime
import configparser
import os


# Read configuration from config.ini
config = configparser.ConfigParser()
config.read('config.ini')

# Connect to MariaDB Platform
try:
    conn = mariadb.connect(
        user=config.get('Database', 'user'),
        password=config.get('Database', 'password'),
        host=config.get('Database', 'host'),
        port=int(config.get('Database', 'port')),
        database=config.get('Database', 'database')
    )
except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)


