# mpdd

```bash
git clone https://github.com/TDHTTTT/mpdd.git
cd mpdd && mkdir input output
#Then move your root file into ./input
docker run --env-file ./env.list -v $PWD/input:/home/mpd/input -v $PWD/output:/home/mpd/output -it tdhttt/mpd:exp
#In the docker container:
cd tst && ./finde.sh
#The log and pngs could be found in ./output both inside docker container and in the host machine
```
