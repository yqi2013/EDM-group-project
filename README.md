# EDM Group 7 Project - Shuffleboard

This repository was created for a data science project using biometric data to improve performance at the game of shuffleboard. The project is for an Educational Data Mining course at Teachers College, Columbia University. Fall 2019.

## Methods

Data was collected using the Sensor Kinetics Pro app on a Samsung Galaxy S10 smartphone that was taped to each player's right forearm while they played shuffleboard at a bar in NYC called Bob's Your Uncle on December 5th, 2019. The 'Multi-Sensor Recorder' function was used, and included the following sensors:

Three Dimensional Sensors:
  - Accelerometer
  - Gyroscope
  - Magnetometer
  
Derived 3-D Sensors:
  - Gravity Sensor
  - Linear Acceleration
  - Rotation Sensor
  
Scalar Sensors:
  - Proximity Sensor
  - Pressure Sensor
  
Rather than play a 2v2 or 1v1 game as is usual in shuffleboard, each player took turns attempting a maximum score with 4 pucks. Each player would initiate the smartphone sensors, push 4 pucks - one at a time - down the board, then stop the sensors, record the score, and save the sensor data. Then the player would repeat the process two more times (each player had 3 attempts to achieve a maximum score). After the player finished his/her three attempts, the smartphone was transferred to the next player. 

Each player's highest score with the cleanest data was uploaded to github. If during an attempt a puck was knocked off the board by another puck, that attempt was ommitted for this analysis and saved for a later one. 

After analyzing the data, an intervention was proposed, and each player took three more turns in an attempt to improve their high score. 
  
## Discussion

The purpose of this experiment is to evaluate the differences in sensor data between an expert shuffleboard player and a novice shuffleboard player, then use the data to recommend a strategy for the novice player to improve their high score. There were 5 players: 1 expert, 2 intermediate, and 2 novice. 

Our hypothesis was that acceleration along the Y-axis of the accelerometer (the force with which a player pushed the puck down the board) could predict expert vs novice. 

We would like to perform the following functions in R Studio:
  - Visualize the pre-intervention data
  - Run a K-means cluster with centers=2 (expert vs novice) and centers=3 (expert vs intermediate vs novice)
  - Determine which sensor made the most significant difference in score (hypothesis suggests the accelerometer)
  - Visualize the post-intervention data
  - Run a K-means cluster to see if any status changed.
