#!/bin/bash
# readiness_check.sh
# Script to check readiness probe of multiple APIs and generate a report

# List of API endpoints (readiness probes)
API_ENDPOINTS=(
  "https://api1.example.com/healthz"
  "https://api2.example.com/ready"
  "https://api3.example.com/status"
)

# Output file
REPORT_FILE="readiness_report_$(date +%F_%T).txt"

echo "==== Readiness Probe Report ====" > "$REPORT_FILE"
echo "Generated on: $(date)" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Check each endpoint
for API in "${API_ENDPOINTS[@]}"; do
  STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$API")
  
  if [ "$STATUS_CODE" -eq 200 ]; then
    echo "[OK] $API is READY (HTTP $STATUS_CODE)" | tee -a "$REPORT_FILE"
  else
    echo "[FAIL] $API is NOT ready (HTTP $STATUS_CODE)" | tee -a "$REPORT_FILE"
  fi
done

-------------------------------
###
How it Works

The API_ENDPOINTS array contains your API readiness probe URLs.

It uses curl to check each endpoint.

It logs whether the endpoint is ready (HTTP 200) or not ready.

Generates a timestamped report file.

Optionally emails the report to the team.

How You Can Explain It in Interview

“I created a Bash script to automatically check the readiness probes of all our APIs. It loops through a list of URLs, uses curl to verify the HTTP status, 
logs the result to a report, and emails it to the team.
This saved us from checking each service manually and gave us a quick readiness snapshot.”

# Optionally email report (requires mailx or sendmail configured)
# mail -s "Readiness Probe Report" team@example.com < "$REPORT_FILE"
####
