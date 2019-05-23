docker build -t lahtijohannes/testfoo -f config/app/Dockerfile . \
&& docker tag lahtijohannes/testfoo:latest 958566005271.dkr.ecr.eu-west-1.amazonaws.com/testfoo:prod \
&& docker push 958566005271.dkr.ecr.eu-west-1.amazonaws.com/testfoo:prod \
&& git archive --format=zip HEAD:eb-deploy-envs/prod > deploy.zip \
&& eb deploy testfoo-prod
