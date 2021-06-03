FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/gamerfuckerofficial/Gamerzbot.git /root/telebot
#working directory 
WORKDIR /root/telebot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","telebot"]
