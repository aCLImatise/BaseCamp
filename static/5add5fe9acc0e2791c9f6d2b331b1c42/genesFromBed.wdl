version 1.0

task GenesFromBed.py {
  input {
    String modeMode
    String distanceDistance
    String typeType
    String metricMetric
  }
  command <<<
    genesFromBed.py \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(metricMetric) then ("--metric " +  '"' + metricMetric + '"') else ""}
  >>>
}