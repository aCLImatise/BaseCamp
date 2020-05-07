version 1.0

task IgdiscoverGroup {
  input {
    Boolean realRealCdr3
    Boolean pseudoPseudoCdr3
    File groupsGroupsOutput
    File plotPlotSizes
    String limitLimit
    Boolean trimTrimG
    Int minimumMinimumLength
    String barcodeBarcodeLength
    File jsonJson
  }
  command <<<
    igdiscover group \
      ~{true="--real-cdr3" false="" realRealCdr3} \
      ~{true="--pseudo-cdr3" false="" pseudoPseudoCdr3} \
      ~{if defined(groupsGroupsOutput) then ("--groups-output " +  '"' + groupsGroupsOutput + '"') else ""} \
      ~{if defined(plotPlotSizes) then ("--plot-sizes " +  '"' + plotPlotSizes + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{true="--trim-g" false="" trimTrimG} \
      ~{if defined(minimumMinimumLength) then ("--minimum-length " +  '"' + minimumMinimumLength + '"') else ""} \
      ~{if defined(barcodeBarcodeLength) then ("--barcode-length " +  '"' + barcodeBarcodeLength + '"') else ""} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""}
  >>>
}