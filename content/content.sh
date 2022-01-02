#!/usr/bin/env bash

key="$1"
SITE_DIR="../docs"

case $key in
    -c|--content)
    /usr/bin/env hugo --cleanDestinationDir --destination ${SITE_DIR}
    ;;
    -s|--server)
    /usr/bin/env hugo server -c ${SITE_DIR}
    ;;
    *) # default option
    echo "******  "
    echo ""
    echo "-c|--content' to update local content to ${SITE_DIR}"
    echo ""
    echo "******  "
    ;;
esac
exit 0
