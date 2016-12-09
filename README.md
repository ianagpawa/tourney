# Tournament Results
### By Ian Agpawa
##### This repo is for my tournament results project from the Udacity Full Stack Web Developer Nanodegree course.  This project focuses on tracking players and matches in a game tournament with a PostgresSQL database. Database schemas store the game matches between players, and a Python module ranks and matches players in a Swiss-system tournament.


### Quick Start
-Clone the repo: `git clone https://github.com/ianagpawa/tourney.git`


#### Running the project locally (First Time Set Up)
In order to run the project locally, you will need `VirtualBox` and `Vagrant` installed on your system.  With the terminal in the project folder, use the command `vagrant up`, followed by `vagrant ssh` to be taken to the vagrant command-line interface.  Use the command `cd \vagrant` to move into the folder.  Then, use command `psql` to go into the psql command line interface.  To create the database, use command `CREATE DATABASE *dbname*`, in this case, the *dbname* was `tournament`.  To connect to the new database, use command `\connect tournament`.  Following this, the database tables must be created using the command `\i tournament.sql`.  

Once the initial set up is complete, return to the vagrant cli, and use command `python tournament_test.py` to run the tests.  All the functions used are in `tournament.py`



### What's included
Within the project folder, you will find the following files:

```
tourney/
    ├── README.md
    ├── Vagrantfile
    ├── pg_config.sh
    ├── tournament.py
    ├── tournament.sql
    └── tournament_test.py
```

## Creator

**Ian Agpawa**


[Github](https://github.com/ianagpawa)

 agpawaji@gmail.com
