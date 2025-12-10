@echo off
echo === Setting up environment and exporting YOLOv8n to ONNX ===

REM Optionally activate your Python virtual environment
REM call path\to\your\venv\Scripts\activate.bat

REM echo Installing Ultralytics 8.2.79 and ONNX 1.18.0...
REM pip install ultralytics==8.2.79 onnx==1.18.0

echo Exporting model to ONNX...
yolo export model='yolov8n.pt' imgsz=640,640 format=onnx opset=12 dynamic=False half=True device=0

echo === Export complete: yolov8n.onnx should now be created ===
pause
