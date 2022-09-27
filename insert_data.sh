#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")

#read all the data from .csv file

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

#insert into teams table
do
#skip first row
if [[ $YEAR != "year" ]]
  then
  # both team's id's

  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    # if winner not found

    if [[ -z $WINNER_ID ]]

    then
    # insert winner

    INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      #show process worked

      if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
      then 
      echo Inserted team: $WINNER
      fi
    fi


    # insert opponent 
    if [[ -z $OPPONENT_ID ]]
    then
    # insert opponent
    INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      # show process worked
      if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
      then
      echo Inserted one team, $OPPONENT
      fi
    fi
  fi
done
#insert into games table now
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]] 
  #get ID's of team from teams table
  then
  WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE teams.name='$WINNER'")
  OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE teams.name='$OPPONENT'")


INSERT_CSV=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WIN_ID, $OPP_ID, $WINNER_GOALS, $OPPONENT_GOALS)")

fi
if [[ $INSERT_CSV == "INSERT 0 1" ]]
    then
    echo inserted data $INCREMENT : $YEAR -- $ROUND -- $OPPONENT -- Score: $WINNER_GOALS - $OPPONENT_GOALS
    fi
done
