# Deploy

## environment

+ ```bash
    nvidia-smi
    # +-----------------------------------------------------------------------------+
    # | NVIDIA-SMI 460.106.00   Driver Version: 460.106.00   CUDA Version: 11.2     |
    # |-------------------------------+----------------------+----------------------+
    # | GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
    # | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
    # |                               |                      |               MIG M. |
    # |===============================+======================+======================|
    # |   0  Tesla T4            On   | 00000000:00:09.0 Off |                    0 |
    # | N/A   61C    P0    28W /  70W |   1138MiB / 15109MiB |      0%      Default |
    # |                               |                      |                  N/A |
    # +-------------------------------+----------------------+----------------------+
    ```

+ ```bash
    python --version
    # Python 3.10.6
    ```

<br>

## models

+ Stable-diffusion/sd-v1-4.ckpt
+ Stable-diffusion/chilloutmix_NiPrunedFp32Fix.safetensors
+ torch_deepdanbooru/model-resnet_custom_v3.pt
+ karlo/ViT-L-14_stats.th
