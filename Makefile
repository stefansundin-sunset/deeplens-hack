
package:
	aws cloudformation package \
	--template-file deeplens-hack.yml \
	--output-template-file deeplens-hack-output.yaml \
	--s3-bucket $(bucket) --profile $(profile)

deploy:
	aws cloudformation deploy \
	--region us-east-1 \
	--template-file deeplens-hack-output.yaml \
	--stack-name deeplens-face-detection-stack --profile $(profile)
