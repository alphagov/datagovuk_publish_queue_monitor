# data.gov.uk Publish Metrics Exporter

The repository contains the app to expose Sidekiq queue metrics for data.gov.uk Publish.

## Getting Started

This app is deployed on the PaaS.

```
cf push -f staging-app-manifest.yml
cf push -f production-app-manifest.yml
```

The metrics are accessible online at https://publish-data-staging-queue-monitor.cloudapps.digital/metrics and https://publish-data-production-queue-monitor.cloudapps.digital/metrics.

