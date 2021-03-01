# SQL_project

# ERD
![ERD](https://github.com/anPerger/SQL_project/blob/master/my_ERD.png)

First part of this project consisted of exploring the data to
understand what we're working with. After exploration with some basic
queries, I began working on the ERD with GenMyModel. This was far and
away the most conceptually challenging part for me to grasp, and I
spent a long time drawing and redrawing relations between tables to
make sure everything was logically consistent and will actually be
queryable. CSVs were loaded in:

1 ) departments  
2 ) titles  
3 ) salaries  
4 ) employees  
5 ) dept_emp  
6 ) dept_manager

After finally getting the schema from my ERD to run correctly and loading 
in my CSVs I was able to begin querying using JOINS. The majority of the 
queries were quite simple with INNER JOINs on whatever tables contained 
the necessary information. Apparently there's a limit of 64 JOINs that are
possible with a single statement, but I have a hard time imagining when 
that will become a legitimate concern

Additional bonus analysis was conducted in the jupyter notebook using sqlAlchemy
