# !/bin/bash

helm install plex ./charts/kube-plex \
    --namespace plex \
    --set claimToken=claim-2HZnP_FPUtUnhD4DKsuV \
    --set persistence.data.claimName=media-pvc\
    --set ingress.enabled=false
