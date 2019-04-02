# mpdd

```bash
git clone https://github.com/TDHTTTT/mpdd.git
cd mpdd && mkdir input output
#Then move your root file into ./input
docker run --env-file ./env.list -v $PWD/input:/home/mpd/input -v $PWD/output:/home/mpd/output -it tdhttt/mpd:exp
#The log and pngs could be found in ./output
```

