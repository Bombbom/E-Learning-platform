# E-Learning-platform
## Run

```
git clone 
python3 -m venv env
source env/bin/activate
pip install -r requirements.txt
# setup and install docker
docker compose up --build
# open new terminal
docker compose exec web python /code/educa/manage.py migrate
docker compose exec web python /code/educa/manage.py createsuperuser
docker compose exec web python /code/educa/manage.py collectstatic
```
Stop: `docker compose stop`
Remove: `docker compose down`
## References 
