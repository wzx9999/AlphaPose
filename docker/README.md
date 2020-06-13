
A CPU only build of AlphaPose, based on Ubuntu 20.04.

# Build

```
# download duc_se.pth and yolov3-spp.weights to this directory...

docker build . --tag alphapose-cpu
```

# Run

Use docker, but substitute the commands below from [Quick Start](https://github.com/nickgrealy/AlphaPose/blob/pytorch-cpu/README.md#quick-start).

e.g.
```
mkdir indir outdir

# put images into 'indir'...

docker run \
    --shm-size 8G \
    -v `pwd`/indir:/indir \
    -v `pwd`/outdir:/outdir \
    alphapose-cpu \
    python3 demo.py --indir /indir --outdir /outdir --save_img
```