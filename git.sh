#/bin/bash

SYSTEM_GIT="/usr/bin/git"

if (${SYSTEM_GIT} remote -v 2>/dev/null | grep -q '^origin\b.*github.com.*(push)$'); then
    export GIT_AUTHOR_NAME="Sean Rütschi"
    export GIT_AUTHOR_EMAIL="bitlog@users.noreply.github.com"
fi

${SYSTEM_GIT} "${@}"

exit $?
