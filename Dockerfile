FROM python:3.6
WORKDIR /worker

COPY requirements.txt ./
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . /root/

CMD ["gunicorn", "start:app", "-c", "/root/gunicorn.conf.py" ] 
