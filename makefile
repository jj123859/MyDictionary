# -*- coding: UTF-8 -*-

#------------------------------------
#             Releases
#------------------------------------
#1.0: April 1st, 2022
#        first release


#setup
python = phython3

.PHONY: clean
clean:
        rm *.o temp

.PHONY: install
install:
        pip install -r requirements.txt
    
