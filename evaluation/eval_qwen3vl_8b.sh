#!/bin/bash
set -e

workdir=$(cd $(dirname $0); pwd)

# settings
VIDEO_DIR="../videos"
ANNOTATION_DIR="../annotations"
OUTPUT_DIR="./results"
MODEL_NAME="Qwen/Qwen3-VL-8B-Instruct"
WORLD_SIZE=1 
JUDGE_API_KEY="Your Judge API Key"
JUDGE_BASE_URL="Your Judge Base URL"

# make the output dir
mkdir -p $OUTPUT_DIR

# run the evaluation
python eval_qwen3vl_8b.py \
    --video_dir $VIDEO_DIR \
    --annotation_dir $ANNOTATION_DIR \
    --output_dir $OUTPUT_DIR \
    --model_name $MODEL_NAME \
    --world_size $WORLD_SIZE \
    --judge_api_key $JUDGE_API_KEY \
    --judge_base_url $JUDGE_BASE_URL

echo "Evaluation completed. Results saved to $OUTPUT_DIR"
