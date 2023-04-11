FROM ubuntu

#updating updating and installing required packages

RUN apt-get update && apt-get install -y python3 python3-pip 

#creating directory
RUN mkdir /Flaskex

#copying project to new directory
COPY flaskex/ /Flaskex

#installing project
RUN pip3 install -r /Flaskex/requirements.txt

#start app
ENTRYPOINT python3 /Flaskex/app.py
