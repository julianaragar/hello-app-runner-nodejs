# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# You can use "node:12" or your custom image as a base image of course.
# We chose this to avoid Docker Hub's throttling during the tutorial steps.
FROM public.ecr.aws/amazonlinux/amazonlinux:2

# You can remove this "RUN" instruction if you use a base image with
# Node.js 12 installation.
RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash - \
    && yum install -y nodejs \
    && yum -y clean all \
    && rm -rf /var/cache/yum

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build
EXPOSE 80

ADD https://i.ibb.co/wMFK73J/Screenshot-2023-06-06-at-17-15-15.png ./public/images/

CMD [ "npm", "start" ]
