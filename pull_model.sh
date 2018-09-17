#!/usr/bin/env bash

# Script to download the model and weight files
cd model_data

if [ "$1" = "-k" ] || [ "$1" = "--keras" ]; then
    if [ ! -e yolov3.h5 ]; then
        wget https://www.dropbox.com/s/63rn4me8lxxzg9e/yolov3.h5?dl=0
    fi

elif [ "$1" = "-d" ] || [ "$1" = "--darknet" ]; then
    if [ ! -e yolov3.cfg ]; then
        wget https://www.dropbox.com/s/m2gw0iu65tpkc2u/yolov3.cfg?dl=0
    fi
    if [ ! -e yolov3.cfg ]; then
        wget https://www.dropbox.com/s/xrepb0kkadk5h2q/yolov3.weights?dl=0
    fi

elif [ "$1" = "-a" ] || [ "$1" = "--all" ]; then
    if [ ! -e yolov3.h5 ]; then
        wget https://www.dropbox.com/s/63rn4me8lxxzg9e/yolov3.h5?dl=0
    fi
    if [ ! -e yolov3.cfg ]; then
        wget https://www.dropbox.com/s/m2gw0iu65tpkc2u/yolov3.cfg?dl=0
    fi
    if [ ! -e yolov3.cfg ]; then
        wget https://www.dropbox.com/s/xrepb0kkadk5h2q/yolov3.weights?dl=0
    fi

elif [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
    echo "Usage: sh pull_model.sh -option"
		echo "options:"
		echo "-k : pull keras model for YOLOv3"
		echo "-d : pull darknet model for YOLOv3"
		echo "-a : pull all models"
		echo "-h : help"
		echo ""
		echo "Example:"
		echo "To pull keras model,"
		echo "sh pull_model.sh -k"

else
    echo "Invalid option, please use -h or --help for options"

fi