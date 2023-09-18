#!/usr/bin/env bash

workdir=$(cd $(dirname $0); pwd)

cd $workdir/stable-diffusion-webui/extensions/
# Removes backgrounds from pictures
if [ ! -d "$workdir/stable-diffusion-webui/extensions/stable-diffusion-webui-rembg" ]; then
    git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui-rembg.git
fi

# 安装简体中文翻译扩展
if [ ! -d "$workdir/stable-diffusion-webui/extensions/stable-diffusion-webui-localization-zh_CN" ]; then
    git clone https://github.com/dtlnor/stable-diffusion-webui-localization-zh_CN.git
    # 使用说明stable-diffusion-webui-localization-zh_CN/README.md
fi

# 安装提示词/反向提示词扩展
if [ ! -d "$workdir/stable-diffusion-webui/extensions/sd-webui-prompt-all-in-one" ]; then
    git clone https://github.com/Physton/sd-webui-prompt-all-in-one.git
    # 使用说明https://aiodoc.physton.com/zh-CN/
fi
