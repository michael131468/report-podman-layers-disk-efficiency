#!/bin/sh

podman pull ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-a:v0.1
podman pull ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-b:v0.1
podman pull ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-c:v0.1
podman pull ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-d:v0.1
podman pull ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-e:v0.1
podman pull ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-f:v0.1

echo "-- Images Pulled:"
du -sh "$HOME"/.local/share/containers/storage/overlay/* 2>/dev/null | sort -h
echo ""

podman run --rm -t ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-a:v0.1 /bin/bash -c "echo 'Running...' && sleep 10" &
podman run --rm -t ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-a:v0.1 /bin/bash -c "echo 'Running...' && sleep 10" &
podman run --rm -t ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-b:v0.1 /bin/bash -c "echo 'Running...' && sleep 10" &
podman run --rm -t ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-b:v0.1 /bin/bash -c "echo 'Running...' && sleep 10" &
podman run --rm -t ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-c:v0.1 /bin/bash -c "echo 'Running...' && sleep 10" &
podman run --rm -t ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-c:v0.1 /bin/bash -c "echo 'Running...' && sleep 10" &
podman run --rm -t ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-d:v0.1 /bin/bash -c "echo 'Running...' && sleep 10" &
podman run --rm -t ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-d:v0.1 /bin/bash -c "echo 'Running...' && sleep 10" &
podman run --rm -t ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-e:v0.1 /bin/bash -c "echo 'Running...' && sleep 10" &
podman run --rm -t ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-e:v0.1 /bin/bash -c "echo 'Running...' && sleep 10" &
podman run --rm -t ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-f:v0.1 /bin/bash -c "echo 'Running...' && sleep 10" &
podman run --rm -t ghcr.io/michael131468/report-podman-layers-disk-efficiency/unique-f:v0.1 /bin/bash -c "echo 'Running...' && sleep 10" &

sleep 2
echo "-- Containers Running:"
du -sh "$HOME"/.local/share/containers/storage/overlay/* 2>/dev/null | sort -h
echo ""

echo "..."
sleep 10
echo "-- Containers Finished:"
du -sh "$HOME"/.local/share/containers/storage/overlay/* 2>/dev/null | sort -h
echo ""

