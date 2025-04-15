#!/bin/bash

for split in 80:20 60:40 50:50 30:70 10:90 0:100; do
    STABLE=$(echo $split | cut -d: -f1)
    CANARY=$(echo $split | cut -d: -f2)
    
    ./update_weights.sh $STABLE $CANARY
    echo "⏳ Waiting to observe traffic behavior..."
    sleep 30 # or longer for real-world tests
done

echo "🎉 Canary promoted successfully!"

