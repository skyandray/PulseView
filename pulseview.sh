#!/bin/sh

if [ $# -eq 0 ]; then

  export LD_LIBRARY_PATH=$(pwd)/usr/common:$(pwd)/usr/lib

else
  
    if [ $1 == "sipeed" ]; then

      export LD_LIBRARY_PATH=$(pwd)/usr/sipeed:$(pwd)/usr/lib

    fi

    if [ $1 == "dslogic" ]; then

      export LD_LIBRARY_PATH=$(pwd)/usr/common:$(pwd)/usr/lib
      ./usr/bin/sigrok-cli --driver=dreamsourcelab-dslogic -l 5 --scan
      sleep 3

    fi
  
fi

$(pwd)/AppRun
