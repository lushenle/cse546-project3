#!/bin/bash
aws lambda invoke --function-name face_recognition_handler out --log-type Tail
sleep 1
aws lambda invoke --function-name face_recognition_handler out --log-type Tail \
--query 'LogResult' --output text |  base64 -d
