# # !/bin/bash

# echo "AWS CLI Configuration"
# echo $SECRET_AWS_PROFILE_NAME
# # Run aws configure command with provided inputs for the new profile
# aws configure --profile $SECRET_AWS_PROFILE_NAME set aws_access_key_id $SECRET_AWS_ACCESS_KEY_ID
# aws configure --profile $SECRET_AWS_PROFILE_NAME set aws_secret_access_key $SECRET_AWS_SECRET_ACCESS_KEY
# aws configure --profile $SECRET_AWS_PROFILE_NAME set default.region $SECRET_AWS_DEFAULT_REGION
# aws configure --profile $SECRET_AWS_PROFILE_NAME set default.output $SECRET_AWS_DEFAULT_OUTPUT_FORMAT
# echo "AWS CLI configuration for profile '$SECRET_AWS_PROFILE_NAME' completed."
# echo "===================================================="

# USERNAME="Omkar-Joshi-HT"
# REPO="web-app"
# TOKEN=$SECRET_ACCESS_TOKEN
# latest_commit=$(curl -s -H "Authorization: token $TOKEN" \
#                     "https://api.github.com/repos/$USERNAME/$REPO/commits/main")
# latest_commit_id=$(echo "$latest_commit" | grep -m 1 '"sha":' | awk -F'"' '{print $4}')
# echo "Latest commit ID: $latest_commit_id"
# echo "Successfully fetched the latest commit ID."
# echo "===================================================="

# /usr/local/bin/aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/n2d8l6y5
# build_and_push_image() {
#     local tag="$1"
#     docker build -t "web-app:$tag" .
#     docker tag "web-app:$tag" "public.ecr.aws/n2d8l6y5/web-app:$tag"
#     docker push "public.ecr.aws/n2d8l6y5/web-app:$tag"
# }
# echo "Building and pushing Docker images..."
# build_and_push_image "$latest_commit_id" # latest-commit-id tag
# build_and_push_image "latest"            # latest tag
# echo "Successfully pushed Docker images to ECR"
# echo "===================================================="
