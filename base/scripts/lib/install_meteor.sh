set -e

curl -sL https://install.meteor.com/?release=1.10.2 | sed s/--progress-bar/-sL/g | /bin/sh
