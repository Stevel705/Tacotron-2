FROM tensorflow/tensorflow:latest-gpu

COPY dataset /Tacotron2-Ru/
COPY tacotron /Tacotron2-Ru/
COPY wavenet_vocoder /Tacotron2-Ru/

COPY ["hparams.py","infolog.py","preprocess.py","README.md","requirements.txt","synthesize.py","train.py","/Tacotron2-Ru/"]

RUN pip install -r requirements.txt
#RUN wget http://www.m-ailabs.bayern/?ddownload=415 && tar zxvpf ru_RU.tgz && rm ru_RU.tgz

