!pip install jupysql psycopg2-binary matplotlib pandas --quiet
%load_ext sql 
%sql postgresql://postgres:root@db:5432/lab_dados
%config SqlMagic.displaylimit = 50 %config SqlMagic.autolimit = 100