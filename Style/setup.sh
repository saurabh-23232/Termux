#!/bin/bash

# Check if the user is using bash or zsh
SHELL_CONFIG_FILE="$HOME/.bashrc"  # Default to .bashrc for bash users

if [[ $SHELL == *"zsh"* ]]; then
  SHELL_CONFIG_FILE="$HOME/.zshrc"  # Use .zshrc for zsh users
fi

# Check if the .bashrc or .zshrc file exists
if [ ! -f "$SHELL_CONFIG_FILE" ]; then
  touch "$SHELL_CONFIG_FILE"  # Create the file if it doesn't exist
fi

# Add banner code to .bashrc or .zshrc (depending on shell)
echo "Adding custom banner to $SHELL_CONFIG_FILE..."

cat << EOF >> "$SHELL_CONFIG_FILE"

# Custom Banner
echo -e "\e[48;5;0m"  # Set background color to black
echo -e "\e[38;5;226m"  # Set text color to yellow
echo -e "\e[38;5;93m"  # Set text color to purple for the banner

cat << 'BANNER'
  _____             _ _   _    _            _    _             
 |  __ \           (_) | | |  | |          | |  (_)            
 | |  | | _____   ___| | | |__| | __ _  ___| | ___ _ __   __ _ 
 | |  | |/ _ \ \ / / | | |  __  |/ _` |/ __| |/ / | '_ \ / _` |
 | |__| |  __/\ V /| | | | |  | | (_| | (__|   <| | | | | (_| |
 |_____/ \___| \_/ |_|_| |_|  |_|\__,_|\___|_|\_\_|_| |_|\__, |
                                                          __/ |
                                                         |___/  
  ...  ..   ..  ...  ..   ..  ...  ..  ...  ...  ..  ...  ...  ..  ...  ..   ..  ...  ..   ..  ...  
..   ..  ...  ..   ..  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ..   ..  ...  ..   ..
  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  
..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ... ...
  ...  ... ...  ...  ... ...  ...  ..  ...  ...  ..  ...  ... ...  ...  ... ...  ...  ... ...  ...  
....................................................................................................
... ...  ...  ... ...  ...  ... ...  ...  ... ...  ... ...  ...  ...  ... ...  ... ...  ...  ... ...
  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ... ...  ...  ... ...  ...  
..   ..  ...  ..   ..  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ..   ..  ...  ..   ..
  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ..   ..  ...  
..   ..  ...  ..   ..  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ..   ..  ...  ..   ..
  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ..   ..  ...  
..   ..  ...  ..   ..  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ..   ..  ...  ..   ..
  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  
..   ..  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ... ...
  ...  ... ...   ..  ... ...  ...  ... ...  ... ...  ...  ... .... ...  ... ...  ...  ... .... ...  
................:.   ........................................................   ....................
... ...  ..... 7GPJ!:   ..  ... ...  ...                ..  ...  ...  ..     :!YP5: ..  ...  ... ...
  ...  ..  ... ?#BBBGJ!:.      ..  .    .::^!77????7!~~^..     ..   .   .:^7YGBBB#~   ...  ..  ...  
..   ..  ...   ?#BBBBBBGPY?!!^:.....~?YPG##&&&&&&&&&&&&##G5J7^...:::^~7JYPBBBBBB##^ ..  ...  ..   ..
  ...  ..  ... !##BBBBBBBBBBBGGGGGG#&&#BGP5YYJJJJJJJJYY5PB#&&#BGGGGGGBBBBBBBBBBB#B:.  ..   ..  ...  
..   ..  ...  .:B##BBBBBBGGGGB##&&#G5Y?????????????????????JYPB#&&#BBGGGBBBBBBB##J  ..  ...  ..   ..
  ...  ..  ...  7&##BBBBBBBB####GYJ????????????????????????????JPB####BBBBBBB###B^..  ..   ..  ...  
..   ..  ...  .. Y&###BBB#####GJ??JJJJJJ???????????????????JJJJJ??5B####BBB#####7   ..  ...  ..   ..
  ...  ..  ...  ..5&########BY?JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ?JP##########7 ...  ...  ..  ...  
..  ...  ...  ..  .?B######BYJYYJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJYJ?PB######5^ ..  ..  ...  ... ...
  ...  ... ...  ... .P&##BB5JYYYYYJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJYYYYYJGBB###?  . ...  ... .... ...  
................... ~###BBBYYYYYYYYJJJJJJJJJJJJJJJJJJJJJJJJJJJJJYYYYYYPBB###P. .....................
... ...  ... ....  ^B##BBBGP555YYYYYY5YYYYYYYYYYYYYYYYYYY5YYYYYYYYYY5PGGBB##&J ... ...  ...  ... ...
  ...  ..  ...  .. J&#BBGGGGGPPP5555YYYYYYYYYYYYJYYYYYYYYYYYYY5555PPPGGGGBB###^  ...  ... ...  ...  
..   ..  ...  ..  :B##BBGGGPPP5PGB#BBG5YJJJJJJJJJJJJJJJJJJ5PGBBBBP55PPPGGGBB##? .   ..  ...  ..   ..
  ...  ..  ...  ..!##BBGGGPP5555PGB#&@@&#PJ????????????YG#@@&&BBGPY555PPGGBBB#P  ...  ..   ..  ...  
..   ..  ...  ..  7##BBGGP555YYYJJJJJJ5B@@&G?77777777Y#@@&PYJJJJJJYYY55PPGGBB#B:.   ..  ...  ..   ..
  ...  ..  ...  ..7#BBGGPP55YYYJJJ????G&@@@&B7!!!!!!J#&@@&#5???JJJJYYY55PPGBB#B. ...  ...  ..  ...  
..   ..  ...  ..  ~BBBGGP55YYYJJJ???7G@@@@@P7!!!!!!!!?#@@@@@Y7???JJJJYY55PGBB#G..   ..  ...  ..   ..
  ...  ..  ...  ...P#BGPP5YYYJJ???777G@@@@@G~!!!~~!!~7&@@@@@J77???JJJYY55PGGB#Y  ...  ... ...  ...  
...  ..  ...  ..   7#BGPP5YYJJ???777!?#@@@B!~~~~~~~~~~J&@@@P!777???JJJY55PGBBB^ ..  ..  ...  ... ...
  ...  ... ...  ....P#BGP5YYJJ???77!!~~?J7~~~~~~~~~~~~~!?J7~!!777???JJY55PGB#? . ...  ... ...  ...  
................... ^GBGP55YJJ??77YGJ7~~^~~~~~~~~~~~~~~~^^~!?P577???JYY5PGB#Y. .....................
... ...  ...  ... .. ^GBGP5YYJ???7!Y&&GY?!~~~^^^^^^^^~~!7JP#&G777??JJY5PPB#Y.  ... ...  ...  ... ...
  ...  ..  ...  ...   ^5BGP5YYJ??77!!Y#@@&#GP5YYYYY5PGB&@@&P7~!7??JJY5PPBB7. ..  ...  ...  ..  ...  
..   ..  ...  ..  ...  .7GBGP5YJJ?777~~7YG&@@@@@@@@@@@&B5?!~!77??JJY5PGBY^ ..  ...  ..  ...  ..   ..
  ...  ..  ...  ...  ..  :?GGP5YYJ??777!~~~!7?JYYYJJ?!~~~!!77??JJY5PGG5~...  ..  ...  ..   ..  ...  
..   ..  ...  ..   ..  ... :?PGGP5YJJ??777!!!~~~~~~~!!!7777??JJY5PGGY~..  ...  ..   ..  ...  ..   ..
  ...  ..  ...  ...  ..  ... .~J5GGP5YYJJ????77777777????JJY55PGG57:.   ...  ..  ...  ..   ..  ...  
..   ..  ...  ..   ..  ...  ..  .~7J5PPPP55YYYYJJJJYYYY55PPPP5J!:..   ..  ...  ..   ..  ...  ..   ..
  ...  ..  ...  ...  ..  ...  ...  .::~7?YY55PPPPPPPP55YJ77~:   .  ...  ...  ..  ...  ...  ..  ...  
..   ..  ...  ..  ...  ...  ..  ...       ...::^^^::::...    ..  ...  ..  ...  ...  ..  ...  ..   ..
  ...  ... ...  ... .... ...  ... .... ...  ..        ..  ...  ..  ...  ... ...  ...  ... ...  ...  
....................................................................................................
... ...  ... .... ...  ...  ... ...  ... ...  ...  ... .... ...  ... ...  ...  ... .... ... .... ...
  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ... ...  ...  
..   ..  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ..   ..  ...  ..   ..
  ...  ..   ..  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ...  ..  ...  ..   ..  ..
BANNER

                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
                                                                                          
              ++-.                                                     -+=                
              #%%%*-.                   .:::--:..                  .-+##%%.               
              #%%#####+-::.      :=+*#%@@%%%%%%@@%%#+-:.      .:=+*####%%%.               
              #%%%##########***#%%%%#**++++==++++**#%%%%###*##########%%%#                
              =%%%%########%%%%%*+====================+*%%%%%########%%%%=                
               #%%%%%###%%%%%#+==========================+*%%%%%###%%%%%#.                
               :%%%%%%%%%%%*================================#%%%%%%%%%%%-                 
                -%%%%%%%%%+==+============================+==+#%%%%%%%%-                  
                 :*%%%%%%+=++++++=======================+++++=+%%%%%%*:                   
                   #%%%%*=+++++++++===================+++++++++*#%%%*                     
                  -%%%%#*++++++++++++++++++++++++++++++++++++++*##%%%-                    
                 .%%%%###**********++++++++++++++++++****+*****###%%%%.                   
                 =%%%#####******+++++++++++++++++++++++++******####%%%+                   
                 #%%####*****%@@@@%#+==============+#%@@@@%*****####%%#                   
                .%%%###****+++++*#%@@@*==----=-==*%@@%#*++++++***###%%%.                  
                .%%###***+++++=====#@@@%=------=%@@@#======++++***##%%%.                  
                .#%##***++++======@@@@@*+------=*@@@@@======++++***##%%.                  
                 *%##**++++====--+@@@@@+::::::::+@@@@@+--====++++**##%%                   
                 -%##**+++====----@@@@@-::::::::-@@@@@=---====+++**##%+                   
                  #%##*+++====-----+**-::::::::::-+*+-----====+++**#%%.                   
                  :%##**++===--+=--:::::::::::::::::::-=+--===++**##%:                    
                   -%#**++===--=%%*=-::::::::::::::-+#%#---===++**#%-                     
                    -##**++===--:+%@@%#*+=====++*#%@@%=:--===++*###:                      
                     .+##*++===---:=*%@@@@@@@@@@@@#+-:---===++*##+.                       
                       -*#**++===----::-=+++++==-::----===++**#*:                         
                         -*#**++===-------:::--------===++**#+:                           
                           .=*#**+++=====------=====+++**#*=.                             
                              .-+*****++++++++++++*****+-.                                
                                   :-==++******++==::.                                    
                                                                                          
                                                                                          
                                                                                          
                                                                              
                                                                                
                                                                                
             %%%.                                              %%%              
             %%###%%/           %&&&&&&&&&&&&&%.          /%%###%%              
             &%%#######((#&&&&&&#*************#&&&&&%#((#######%%&              
             ,&%%%#####&&&%#***********************#%&&&#####%%%&,              
              (&%%%%%&&%%**//*********************///*%%&&%%%%%&#               
                &&&&&%%*//////********************/////*%%&&&&&.                
                 /&%%#//////////***************/*////////#%%&*                  
                ,&%%##(//////**/////////////////////////(##%%&                  
                &%%##((((((/////////////*////////////(((((##%%&                 
               (%%##(((///@@@@@@#*************#@@@@@@///(((##%&.                
               %%%#((/////******&@@#,,,,,,,#@@%******/////((#%%%                
               #%%#((///******#@@@@/*,,,,,*/@@@@(******///((#%%#                
                %%#(///*****,,&@@@@/,,,,,,,(@@@@%,,*****///(#%%.                
                #%#((//****,,,.%@@,,.......,*@@#.,,,****//((#%%                 
                 %%#(//****,@*,,,,,.........,,,,,/&,,***//(#%%                  
                  #%#(//***,,(@@@(,.........*%@@@,,,***//(#%/                   
                    %##(/***,,,.*@@@@@@@@@@@@@.,,,,***/(##%                     
                      ###(//**,,,,,,.......,,,,,,**//(#%/                       
                         ###(///****,,,,,,*****//((###                          
                             ,###((((/////((((##%.                              
                                                                                                                                                           
                                                                                         

# Reset color to default
echo -e "\e[0m"

EOF

echo "Banner added successfully!"