docker run \
    --name scrapy0 \
    -ti --rm \
    -v /Users/jason/src/scotus-t/data:/var/dataset \
    -e "PASSWORD=test28" \
    jtwb/scotus-t /bin/bash -c "/usr/bin/env python"
