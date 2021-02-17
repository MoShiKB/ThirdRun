# ThirdRun
Success Only on third run

## How does it works
1. First step is to print job info by using enviroment variable: $ENV:JOB_NAME
2. Checking how many time it already ran(By testing if enviroment var 'TimesRun' exists)
  a. if not exists, creating it, and defines it with "1"
  b. if exists, checks if it is a third run.
3. when we reach third run, "Third run!" will be print, else it will fail with "Not the third run!"
4. before the script finished, it will extend our TimesRun enviroment variable by 1.
