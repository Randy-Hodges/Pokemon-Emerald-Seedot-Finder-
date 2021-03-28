# Pokemon-Emerald-Seedot-Finder-
Includes the files I used to create a robot that searched for and found seedots (and other pokemon) in Pokemon Emerald. There are also files for granite cave automated battling and Daycare experience gain. 

This project combined a camera, arduino, and Matlab code to search for and find seedots in Pokemon emerald. The arduino was connected to 4 servo motors that were attached to an xbox controller. The Xbox controller was connected to my pc which ran pokemon emerald through the RetroArch emulator. A camera was pointed at my pc screen to use as input for the Matlab code which would decide which actions to take. These actions were carried out by the servo motors pressing buttons on the xbox controller, making the entire process of playing the game automatic and without input from the game itself. Everything was external to the game which was an additional restriction I had for myself. This robot assisted me in my challenge to beat pokemon emerald without taking damage.

# Contents
Here is a rundown of the folder 'seedot finder':

'EyesandBrain2.m' is the main file that was used to search for seedots (or ralts or whichever pokemon I wanted to find). 'GraniteCave.m' is almost a copy of 'EyesandBrain2.m' but utilizes some functions for battling/fleeing from wild pokemon for use in Granite Cave. 'Daycare.m' is a simple file that moves the player left and right to earn in-game experience at the Daycare. 

The rest of the files are either functions that the main files use or are png's that the functions/main files use.

Other Files:
A circuit diagram, README, and picture of the set-up is included outside of 'seedot finder'

