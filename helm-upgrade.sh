# !/bin/bash

helm upgrade plex ./charts/kube-plex \
    --namespace plex \
    --set claimToken=claim-2HZnP_FPUtUnhD4DKsuV \
    --set persistence.data.claimName=media-pvc\
    --set persistence.config.claimName=config-pvc\
    --set kubePlex.enabled=false\
    --set ingress.enabled=false
