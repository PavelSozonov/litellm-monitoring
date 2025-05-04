#!/bin/sh

helm repo add vm https://victoriametrics.github.io/helm-charts/
helm repo update

helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

helm pull vm/victoria-metrics-single --untar
helm pull vm/victoria-metrics-cluster --untar
helm pull vm/victoria-metrics-agent --untar
helm pull grafana/grafana --untar
