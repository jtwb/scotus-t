docker rm scrapy0

docker run \
    --name scrapy0 \
    -d \
    -p 8889:8888 \
    -v /Users/jason/src/scotus-t/data:/var/dataset \
    -e "PASSWORD=test28" \
    jtwb/scotus-t
