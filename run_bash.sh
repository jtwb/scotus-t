docker run \
    --name scrapy0bash \
    -ti --rm \
    -p 8889:8888 \
    -v /Users/jason/src/scotus-t/data:/var/dataset \
    -e "PASSWORD=test28" \
    jtwb/scotus-t /bin/bash
