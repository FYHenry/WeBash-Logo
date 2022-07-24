#
# File name: webash.sh
# Description: Bash script to easily start and stop the docker container
# Authors: colivier74, Alnotz
# If you're a new WeBash contributor and worked on this file, please add your name here.
#
# This file is part of the WeBash project with is released under the terms of GNU Affero General Public License V3.0.
# You should have received a copy of the GNU Affero General Public License along with WeBash. If not, see <https://www.gnu.org/licenses/>.
#

#!/bin/bash
DIRECTORY=$(cd `dirname $0` && pwd)
GIT=$(type -p git)
VERBOSE=0

if [ -z $GIT ]; then
    echo "WeBash needs git to work, please install it."
    exit 1 
fi

#REMOVE OLDS FILES
    #docker
rm $DIRECTORY/docker-compose.yml > /dev/null 2>&1
rm $DIRECTORY/Dockerfile > /dev/null 2>&1
rm $DIRECTORY/.env > /dev/null 2>&1
    #node
rm $DIRECTORY/npmout.txt > /dev/null 2>&1
rm $DIRECTORY/npmerr.txt > /dev/null 2>&1 

#UPDATE
$GIT -C $DIRECTORY pull
# MAN-DB-TXT
$GIT clone https://github.com/colivier74/man-db-txt.git res/git-libs/man-db-txt
$GIT -C res/git-libs/man-db-txt pull

case $1 in
    #Command for help text.
    help )
    case $LANG in
    #Translated in French.
    fr* )
        echo "Usage : webash [-v] { help | start WAY [-p IP] [-n NAME] | stop WAY }" 
        echo ""
        echo "Argument général"
        echo ""
        echo "-v | --verbose"
        echo "                  Rend plus bavard."
        echo ""
        echo ""
        echo "Commandes"
        echo ""
        echo "help"
        echo "                  Affiche cette sortie d'aide."
        echo ""
        echo "start WAY"
        echo "                  Démarre l'émulation WeBash via la méthode WAY."
        echo "                  On peut préciser le port TCP/UDP PORT via l'argument -p"
        echo "                   et préciser le nom du conteneur NAME via l'argument -n."
        echo ""
        echo "stop WAY"
        echo "                  Démarre l'émulation WeBash via la méthode WAY."
        echo ""
        echo ""
        echo "Arguments spécifiques"
        echo ""
        echo "-p | --port=PORT"
        echo "                  Insère un port TCP/UDP personnalisé PORT. La valeur par"
        echo "                   défaut de PORT est 8085."
        echo ""
        echo "-n | --name=NAME"
        echo "                  Insère un nom de conteneur NAME. La valeur par défaut"
        echo "                   de NAME est \"webash\"."
        echo ""
        echo ""
        echo "Variables"
        echo ""
        echo "WAY"
        echo "                  Nom de méthode pour l'implémentation de WeBash. Les"
        echo "                   valeurs légales sont \"docker\" et \"node\"."
        echo ""
        echo "Version : 1.0"
        echo ""
        echo "Source : https://github.com/taokann/WeBash"
        echo ""
        echo "Auteurs : Tao-Kann MARTIN et Olivier CARTIER"
        echo ""
        echo "Licence : GNU Affero General Public License V3.0"
        echo ""
        ;;
    #English as default language.
    * )
        echo "Usage : webash [-v] { help | start WAY [-i IP] [-n NAME] | stop WAY }" 
        echo ""
        echo "General argument"
        echo ""
        echo "-v | --verbose"
        echo "                  Gives more verbosity."
        echo ""
        echo ""
        echo "Commands"
        echo ""
        echo "help"
        echo "                  Show this help output."
        echo ""
        echo "start"
        echo "                  Starts the WeBash emulation via WAY method."
        echo "                  One can precise the TCP/UDP port PORT via -p argument"
        echo "                   and precise the container name NAME via -n argument."
        echo ""
        echo "stop WAY"
        echo "                  Stops the WeBash emulation via WAY method."
        echo ""
        echo ""
        echo "Specific arguments"
        echo ""
        echo "-p | --port=PORT"
        echo "                  Set customized TCP/UDP port PORT. PORT's default value"
        echo "                   is 8085."
        echo ""
        echo "-n | --name=NAME"
        echo "                  Set customized container name NAME. NAME's default"
        echo "                   value is \"webash\"."
        echo ""
        echo ""
        echo "Variables"
        echo ""
        echo "WAY"
        echo "                  Method name for WeBash implementation. Legal"
        echo "                   values are \"docker\" and \"node\"."
        echo ""
        echo "Version : 1.0"
        echo ""
        echo "Source : https://github.com/taokann/WeBash"
        echo ""
        echo "Authors : Tao-Kann MARTIN and Olivier CARTIER"
        echo ""
        echo "Licence : GNU Affero General Public License V3.0"
        echo ""
        ;;
    esac
    exit 0;;
    #Global argument for verbosity in console.
    -v | --verbose )
    VERBOSE=1
    shift;;
    #Commande to start WeBash.
    start ) 
    if [ -z $1 ]; then
        echo "Please specify a way to start Webash"
        echo "Usage : bash start.sh <way> [args ...]"
        echo ""
        echo "way : docker"
        echo "args : -p <port>"
        echo "       -n <name>"
        echo ""
        echo "way : node"
        echo "args : -p <port>"
    #DOCKER
    elif [ $1 = docker ]; then 
        #check for dependencies
        DOCKER_COMPOSE=$(type -p docker-compose)
        DOCKER=$(type -p docker) 
        if [ -z $DOCKER ]; then
            echo "WeBash needs docker to work, please install it."
            exit 1
        fi
    
        if [ -z $DOCKER_COMPOSE ]; then
            echo "WeBash needs docker-compose to work, please install it."
            exit 1
        fi
    
        #copy files
        cp $DIRECTORY/deployment/docker/docker-compose_pattern.yml $DIRECTORY/docker-compose.yml > /dev/null 2>&1
        cp $DIRECTORY/deployment/docker/Dockerfile_pattern $DIRECTORY/Dockerfile > /dev/null 2>&1
    
        while [ -n "$1" ]; do
            case $2 in
                -p|--port) PORT=$2; shift;;
                -n|--name) NAME=$2; shift;;
            esac
            shift
        done
    
        if [ -z $PORT ]; then
            PORT="8085"
        fi
    
        if [ -z $NAME ]; then
            NAME="webash"
        fi
        
        touch $DIRECTORY/.env
        echo "PORT=$PORT" >> $DIRECTORY/.env
        echo "NAME=$NAME" >> $DIRECTORY/.env
    
        #run container
        $DOCKER_COMPOSE -f $DIRECTORY/docker-compose.yml up --build -d > /dev/null 2>&1
    
        echo "------------"
        echo "WeBash was successfully started with docker and the following parameters:"
        echo "port :" $PORT
        echo "container name:" $NAME
        echo "------------"
    elif [ $1 = node ]; then 
        #check for dependencies
        NODE=$(type -p node)
        NPM=$(type -p npm) 
        if [ -z $NODE ]; then
            echo "WeBash needs node.js to work, please install it."
            exit 1
        fi
    
        if [ -z $NPM ]; then
            echo "WeBash needs npm to work, please install it."
            exit 1
        fi
    
        #Install dependencies npm
        $NPM install
    
        while [ -n "$1" ]; do
            case $1 in
                -p|--port) PORT=$1; shift;;
            esac
            shift
        done
    
        if [ -z $PORT ]; then
            PORT="8085"
        fi
    
        touch $DIRECTORY/.env
        echo "PORT=$PORT" >> $DIRECTORY/.env
    
        #run container
        $NPM start > $DIRECTORY/npmout.txt 2> $DIRECTORY/npmerr.txt &
    
        echo "------------"
        echo "WeBash was successfully started with node.js and the following parameters:"
        echo "port :" $PORT
        echo "------------"
    else
        echo "Unknown way"
        echo "Here are the means available :"
        echo "docker"
        echo "node"
    fi;;
    
    stop ) 
    #DOCKER
    elif [ $1 = docker ]; then 
        #check for dependencies
        DOCKER_COMPOSE=$(type -p docker-compose)
        DOCKER=$(type -p docker) 
        if [ -z $DOCKER ]; then
            echo "WeBash needs docker to work, please install it."
            exit 1
        fi
    
        if [ -z $DOCKER_COMPOSE ]; then
            echo "WeBash needs docker-compose to work, please install it."
            exit 1
        fi
        
        #stop container
        if [ ! -f $DIRECTORY/docker-compose.yml ]; then
            echo "Container already stopped !"
            exit 1
        else 
            $DOCKER_COMPOSE -f $DIRECTORY/docker-compose.yml down --remove-orphans
        fi
    
        #removes files
        rm $DIRECTORY/docker-compose.yml > /dev/null 2>&1
        rm $DIRECTORY/Dockerfile > /dev/null 2>&1   
    #node
    elif [ $1 = node ]; then 
        #check for dependencies
        NODE=$(type -p node)
        NPM=$(type -p npm) 
        if [ -z $NODE ]; then
            echo "WeBash needs node.js to work, please install it."
            exit 1
        fi
    
        if [ -z $NPM ]; then
            echo "WeBash needs npm to work, please install it."
                exit 1
    fi
        
        #stop npm
        if [ ! -f $DIRECTORY/npmout.txt ]; then
            echo "Node already stopped !"
            exit 1
        else 
            killall -SIGINT WeBash
        fi
    
        #removes files
        rm $DIRECTORY/npmout.txt > /dev/null 2>&1
        rm $DIRECTORY/npmerr.txt > /dev/null 2>&1  
    
    ######################FILES FOR EVERY WAYS
        #removes files
    rm $DIRECTORY/.env > /dev/null 2>&1
    
    else    
        echo "Unknown way"
        echo "Here are the means available :"
        echo "docker"
        echo "node"
    fi 
    exit 0;;
    * )
    exit 0;;
esac
