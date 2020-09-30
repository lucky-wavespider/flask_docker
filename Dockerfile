FROM python:3.6
WORKDIR /worker

COPY requirements.txt ./
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple &&
	apt-get update  &&
	apt-get install redis net_tools -y

COPY . /root/

CMD ["gunicorn", "start:app", "-c", "/root/gunicorn.conf.py" ] 
