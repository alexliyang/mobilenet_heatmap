save_model=./models2/log7_L5_4
pre_model=./models2/model7_L2_3
logs=./models2/log7_L5_4.txt
lr=0.0000001

CUDA_VISIBLE_DEVICES=2 \
nohup python -u train_model.py --model_dir=${save_model} \
                               --pretrained_model=${pre_model} \
                               --learning_rate=${lr} \
                               --level=L5 \
                               --debug=False \
                               --image_size=256 \
                               --batch_size=16 \
                               > ${logs} 2>&1 &
tail -f ${logs}