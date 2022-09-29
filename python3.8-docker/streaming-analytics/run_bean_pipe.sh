#!/bin/bash

python3.8 PubSubToGCS.py \
	  --project=$PROJECT_ID \
	  --region=$REGION \
	  --input_topic=projects/$PROJECT_ID/topics/$TOPIC_ID \
	  --output_path=gs://$BUCKET_NAME/samples/output \
	  --runner=DataflowRunner \
	  --window_size=2 \
	  --num_shards=2 \
	  --temp_location=gs://$BUCKET_NAME/temp