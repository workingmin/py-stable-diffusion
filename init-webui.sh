#!/usr/bin/env bash

workdir=$(cd $(dirname $0); pwd)
if [ ! -d "$workdir/stable-diffusion-webui" ]; then
    git clone --branch v1.5.2 --single-branch https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
fi

mkdir -p $workdir/stable-diffusion-webui/repositories

cd $workdir/stable-diffusion-webui/repositories
if [ ! -d "$workdir/stable-diffusion-webui/repositories/stable-diffusion-stability-ai" ]; then
    git clone https://github.com/Stability-AI/stablediffusion.git stable-diffusion-stability-ai
    cd stable-diffusion-stability-ai
    git checkout 'cf1d67a6fd5ea1aa600c4df58e5b47da45f6bdbf'
fi

cd $workdir/stable-diffusion-webui/repositories
if [ ! -d "$workdir/stable-diffusion-webui/repositories/generative-models" ]; then
    git clone https://github.com/Stability-AI/generative-models.git generative-models
    cd generative-models
    git checkout '5c10deee76adad0032b412294130090932317a87'
fi

cd $workdir/stable-diffusion-webui/repositories
if [ ! -d "$workdir/stable-diffusion-webui/repositories/k-diffusion" ]; then
    git clone https://github.com/crowsonkb/k-diffusion.git k-diffusion
    cd k-diffusion
    git checkout 'c9fe758757e022f05ca5a53fa8fac28889e4f1cf'
fi

cd $workdir/stable-diffusion-webui/repositories
if [ ! -d "$workdir/stable-diffusion-webui/repositories/CodeFormer" ]; then
    git clone https://github.com/sczhou/CodeFormer.git CodeFormer
    cd CodeFormer
    git checkout 'c5b4593074ba6214284d6acd5f1719b6c5d739af'
fi

cd $workdir/stable-diffusion-webui/repositories
if [ ! -d "$workdir/stable-diffusion-webui/repositories/BLIP" ]; then
    git clone https://github.com/salesforce/BLIP.git BLIP
    cd BLIP
    git checkout '48211a1594f1321b00f14c9f7a5b4813144b2fb9'
fi