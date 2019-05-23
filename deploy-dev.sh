docker build -t lahtijohannes/testfoo -f config/app/Dockerfile . \
&& docker tag lahtijohannes/testfoo:latest 958566005271.dkr.ecr.eu-west-1.amazonaws.com/testfoo:dev \
&& docker push 958566005271.dkr.ecr.eu-west-1.amazonaws.com/testfoo:dev \
&& git archive --format=zip HEAD:eb-deploy-envs/dev > deploy.zip && eb deploy testfoo-dev2
