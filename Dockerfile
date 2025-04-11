FROM quay.io/lyfe00011/md:beta

RUN apt-get update && apt-get install -y git && git --version

RUN git clone https://github.com/lyfe00011/levanter.git /root/LyFE

WORKDIR /root/LyFE

RUN yarn install

ENV PATH="/usr/bin:/bin:/usr/local/bin:/usr/sbin:/sbin"

CMD ["npm", "start"]
