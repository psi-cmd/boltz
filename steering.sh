#! /bin/bash
export USER=lliu466
export MEMDIR=/dev/shm
cp /staging/$USER/boltz.tar.gz $MEMDIR/

tar -I pigz -xf $MEMDIR/boltz.tar.gz -C $MEMDIR/

boltz predict molecular_glue.yaml --use_msa_server --use_potentials --override --cache $MEMDIR/.boltz




