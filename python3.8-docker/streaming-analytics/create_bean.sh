#!/bin/bash  

python3.8 -m pip install --upgrade pip
python3.8 -m pip install --no-cache-dir -r requirements.txt
export GOOGLE_APLLICATION_CREDENTIALS="global-sign-361417-edbd1632b67b.json" 

python3.8 PubSubToGCS.py \
	  --project=$PROJECT_ID \
	  --region=$REGION \
	  --input_topic=projects/$PROJECT_ID/topics/$TOPIC_ID \
	  --output_path=gs://$BUCKET_NAME/samples/output \
	  --runner=DataflowRunner \
	  --window_size=2 \
	  --num_shards=2 \
	  --temp_location=gs://$BUCKET_NAME/temp
