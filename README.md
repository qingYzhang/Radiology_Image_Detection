# Radiology_Image_Detection
Image Detection for MSK Image

pytorch == 1.2.0

TO TRAIN:
```
|-datasets
    |-train
        |-cat
            |-123.jpg
            |-234.jpg
        |-dog
            |-345.jpg
            |-456.jpg
        |-...
    |-test
        |-cat
            |-567.jpg
            |-678.jpg
        |-dog
            |-789.jpg
            |-890.jpg
        |-...
```
1. run txt_annotation.py to generate cls_train.txt，adjust the classes as needed.
2. adjust the classes in the ./model_data/cls_classes.txt.  
3. run train.py.