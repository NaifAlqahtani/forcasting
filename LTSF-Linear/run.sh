if [ ! -d "./logs" ]; then
    mkdir ./logs
fi

if [ ! -d "./logs/LongForecasting" ]; then
    mkdir ./logs/LongForecasting
fi
seq_len=96 # 24 * 4
model_name=Linear
data_path=Amity-OR.csv
 
python -u run_longExp.py \
  --is_training 1 \
  --root_path ../dataset/ \
  --data_path $data_path \
  --model_id Amity2022_$seq_len'_'24 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --label_len 24 \
  --pred_len 24 \
  --target 'value' \
  --enc_in 321 \
  --des 'Exp' \
  --itr 1 --batch_size 16  --learning_rate 0.001 >logs/LongForecasting/$model_name'_'Amity2022_$seq_len'_'24.log 

  
model_name=DLinear

python -u run_longExp.py \
  --is_training 1 \
  --root_path ../dataset/ \
  --data_path $data_path \
  --model_id Amity2022_$seq_len'_'24 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --label_len 24 \
  --pred_len 24 \
  --target 'value' \
  --enc_in 321 \
  --des 'Exp' \
  --itr 1 --batch_size 16  --learning_rate 0.001 >logs/LongForecasting/$model_name'_'Amity2022_$seq_len'_'24.log 


model_name=NLinear

python -u run_longExp.py \
  --is_training 1 \
  --root_path ../dataset/ \
  --data_path $data_path \
  --model_id Amity2022_$seq_len'_'24 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --label_len 24 \
  --pred_len 24 \
  --target 'value' \
  --enc_in 321 \
  --des 'Exp' \
  --itr 1 --batch_size 16  --learning_rate 0.001 >logs/LongForecasting/$model_name'_'Amity2022_$seq_len'_'24.log 