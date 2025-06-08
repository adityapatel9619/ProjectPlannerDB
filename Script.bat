@echo off
set SERVER_NAME=ASUS
set DATABASE_NAME=ProjectPlanner
set USERNAME=sa
set PASSWORD=1007

REM Execute Tables
set SCRIPT_TABLE=C:\LearningSpace\MVC\ProjectPlanner_DB_Script\ProjectPlannerDB\Table

REM Loop through all .sql files in folder and subfolders
for /R "%SCRIPT_TABLE%" %%f in (*.sql) do (
    echo Running: %%f
    sqlcmd -S %SERVER_NAME% -d %DATABASE_NAME% -U %USERNAME% -P %PASSWORD% -i "%%f"
)

REM Execute Views
set SCRIPT_View=C:\LearningSpace\MVC\ProjectPlanner_DB_Script\ProjectPlannerDB\View

REM Loop through all .sql files in folder and subfolders
for /R "%SCRIPT_View%" %%f in (*.sql) do (
    echo Running: %%f
    sqlcmd -S %SERVER_NAME% -d %DATABASE_NAME% -U %USERNAME% -P %PASSWORD% -i "%%f"
)

REM Execute SP
set SCRIPT_SP=C:\LearningSpace\MVC\ProjectPlanner_DB_Script\ProjectPlannerDB\SP

REM Loop through all .sql files in folder and subfolders
for /R "%SCRIPT_SP%" %%f in (*.sql) do (
    echo Running: %%f
    sqlcmd -S %SERVER_NAME% -d %DATABASE_NAME% -U %USERNAME% -P %PASSWORD% -i "%%f"
)

pause