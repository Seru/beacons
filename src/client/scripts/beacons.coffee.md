# Beacon Library
This library monitors estimote beacons and extract useful informations.

## Reactive Beacon Data

    @ScannedBeacons = new ReactiveVar [], (oldv, newv) ->
      return false if oldv.length isnt newv.length
      _.reduce newv, ((akk, newbeacon) ->
        akk and !! _.find oldv, (oldbeacon) -> 
          oldbeacon.proximityUUID is newbeacon.proximityUUID
      ), true

    onBeaconsRanged = (info) ->
      @ScannedBeacons.set info.beacons.sort (b1, b2) -> b1.proximityUUID > b2.proximityUUID
      alert info.beacons

    EstimoteBeacons.startMonitoringForRegion {}, onBeaconsRanged     