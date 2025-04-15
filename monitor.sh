CANARY_RESP=$(curl -s http://localhost:8080 | grep CANARY)

if [[ -z "$CANARY_RESP" ]]; then
    echo "❌ Canary not responding. Rolling back..."
    ./update_weights.sh 100 0
    exit 1
else
    echo "✅ Canary healthy."
fi

