sudo cp jetson_utils_python.so jetson_inference_python.so ../dreamvu_ws/lib/python3.6/site-packages
sudo cp -r data/ /usr/local/bin/

cd trt
sudo cp *.trt /usr/local/bin/data
cd ..

sudo cp libjetson-inference.so libjetson-utils.so /usr/local/lib
#sudo cp depth.bin /usr/local/bin
sudo mkdir -p /usr/src/tensorrt/bin/common/
sudo cp logger.o /usr/src/tensorrt/bin/common/
sudo chown -R $USER:$USER /usr/src/tensorrt/ /usr/local/bin/data/*.trt /usr/local/bin/*.bin
sudo ldconfig
