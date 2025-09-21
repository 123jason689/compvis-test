SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# YOLO_PATH="$SCRIPT_DIR/models/yoloe/yolov8l_latest.pt"

# if [ -f "$YOLO_PATH" ]; then
#     echo "Found data file at: $YOLO_PATH"
# else
#     echo "Downloading model weights into $YOLO_PATH"
#     curl -L https://github.com/ultralytics/assets/releases/download/v8.3.0/yoloe-v8l-seg.pt -o ${SCRIPT_DIR}/models/yoloe/yolov8l_latest.pt --create-dirs
#     echo "Model downloaded into $YOLO_PATH"
# fi

export CUDA_HOME="C:/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v11.3"
echo $CUDA_HOME
git clone https://github.com/IDEA-Research/GroundingDINO.git "$SCRIPT_DIR/models/dino/GroundingDINO/"
cd $SCRIPT_DIR/models/dino/GroundingDINO/
pip install -e .
mkdir weights
cd weights
curl -s -L -O https://github.com/IDEA-Research/GroundingDINO/releases/download/v0.1.0-alpha/groundingdino_swint_ogc.pth
cd $SCRIPT_DIR


