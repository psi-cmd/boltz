#! /bin/bash

export MEMDIR=/dev/shm
cp /staging/$USER/boltz.tar.gz $MEMDIR/

apt install -y pigz

tar -I pigz -xf $MEMDIR/boltz.tar.gz -C $MEMDIR/

boltz predict molecular_glue.yaml --use_msa_server --use_potentials --override --cache $MEMDIR/.boltz




