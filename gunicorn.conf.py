
proc_name = "mimi"


workers = 5    # 定义同时开启的处理请求的进程数量，根据网站流量适当调整
worker_class = "gevent"   # 采用gevent库，支持异步处理请求，提高吞吐量
bind = "0.0.0.0:80"
backlog = 20
worker_connections = 10000
max_requests = 20
max_requests_jitter = 100
timeout = 60



reload = "true"
accesslog = '/var/log/gunicorn_acess.log'
errorlog = '/var/log/gunicorn_error.log'
reuse_port = "true"
chdir = "/root"
daemon = "false"
pidfile = "/var/run/gunicorn.pid"
#tmp_upload_dir = /

