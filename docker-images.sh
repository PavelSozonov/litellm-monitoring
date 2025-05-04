#!/bin/sh

# VictoriaMetrics server
docker pull victoriametrics/victoria-metrics:latest
docker save victoriametrics/victoria-metrics:latest -o victoria-metrics.tar

# VMagent (сборщик метрик)
docker pull victoriametrics/vmagent:latest
docker save victoriametrics/vmagent:latest -o vmagent.tar

# Grafana
docker pull grafana/grafana:latest
docker save grafana/grafana:latest -o grafana.tar

# Sidecar для автозагрузки дашбордов
docker pull kiwigrid/k8s-sidecar:1.30.2
docker save kiwigrid/k8s-sidecar:1.30.2 -o k8s-sidecar.tar
