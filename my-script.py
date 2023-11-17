import os
import random
import time

user = os.environ['USER']

while True:
    nb = random.randint(0, 10)
    print(user, nb)
    time.sleep(5)

#docker run --env USER=PAZUZU my-image:0.3
#docker run -d my-image:0.6
#docker ps