# CUDA via pip wheels; no system CUDA to avoid symbol/version clashes
FROM fastfold/boltz-2:latest

RUN rm -rf /app 

RUN pip install cuequivariance-ops-torch-cu12 cuequivariance-torch

RUN apt update && apt install -y git pigz

RUN git clone https://github.com/psi-cmd/boltz.git /app

WORKDIR /app

RUN pip install -e .
