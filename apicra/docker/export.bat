::Exporting a container means creating a compressed file from the container’s file system. The exported file is saved as a ‘gzip’ file.
docker export mycontainer | gzip > mycontainer.gz

:: This compressed file is then copied over to the new host via file transfer tools such as scp or rsync. In the new host, this gzip file is then imported into a new container.
zcat container-name.gz | docker import - container-name

::The images can be compressed using ‘docker save’ and moved to a new host.
docker save myimage > myimage.tar
