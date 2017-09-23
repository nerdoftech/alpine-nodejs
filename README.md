# alpine-nodejs
Nodejs container based on the offical [Apline Linux container](https://hub.docker.com/_/alpine/) (also includes curl).

The version number of this container matches the version of the official alpine container it is built on.

# Usage
Create a docker container and bind mount the location of your node.js app to the container's `/app` directory. You should have your dependencies installed in the  node_modules folder.

__Note:__ Your package.json folder must be at the first level of the `/app` folder (not in a sub directory) and you must have your app's start command defined in package.json.

```bash
docker run -itd --name <name>  -p port:port
 -v /your_app_path:/app \
 ericflores/alpine-nodejs
```

You can get a bash session in the container with the follow command:

```bash
docker exec -it <container_name> /bin/sh
```

#Help
Get help in the issues section of the github repo.