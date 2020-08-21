if [ "$#" -lt 1 ]; then
    echo 'Require parameter "id", "password"'
	exit 1
fi

mkdir jenkins/jenkins_home
chown 1000:1000 jenkins/jenkins_home

mkdir auth

mkdir nginx

mkdir registry

docker run --rm --entrypoint htpasswd registry:2.6.2 -Bbn $1 $2 > auth/nginx.htpasswd