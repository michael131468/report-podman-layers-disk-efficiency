# report-podman-layers-disk-efficiency

A look into how Podman handles container layers and its disk space efficiency

## Disk Efficiency <3 Embedded Linux

When designing software for an embedded system, disk space considerations are typically a
high priority. Embedded systems are normally constrained and there may be only a limited
amount of disk space to work with or reducing disk space usage may save costs by allowing
for cheaper hardware to be used.

This report looks at how Podman stores container images and the efficiency of sharing [container
image layers][1] between different container images.

## Test Container Images



## Test Methodology



## The Results



## Conclusion

Sharing container image layers between multiple images allow for disk space savings. The shared
container layers are only stored once in the Podman storage and not duplicated per container image.

If an embedded system has multiple containers running based on different container images, it may
be smart to try to share the base layers between these container images as much as possible to reduce
wasting disk space on duplicated files.

[1]: https://docs.docker.com/storage/storagedriver/#images-and-layers
