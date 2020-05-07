version 1.0

task Zagros {
  input {
    Boolean outputOutput
    Boolean widthWidth
    Boolean numberNumber
    Boolean chromChrom
    Boolean structureStructure
    Boolean diagnosticDiagnosticEvents
    Boolean deltaDelta
    Boolean geoGeo
    Boolean deDeWeight
    Boolean indicatorsIndicators
    Boolean startingStartingPoints
    Boolean verboseVerbose
    Boolean aboutAbout
  }
  command <<<
    zagros \
      ~{true="-output" false="" outputOutput} \
      ~{true="-width" false="" widthWidth} \
      ~{true="-number" false="" numberNumber} \
      ~{true="-chrom" false="" chromChrom} \
      ~{true="-structure" false="" structureStructure} \
      ~{true="-diagnostic_events" false="" diagnosticDiagnosticEvents} \
      ~{true="-delta" false="" deltaDelta} \
      ~{true="-geo" false="" geoGeo} \
      ~{true="-de_weight" false="" deDeWeight} \
      ~{true="-indicators" false="" indicatorsIndicators} \
      ~{true="-starting-points" false="" startingStartingPoints} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-about" false="" aboutAbout}
  >>>
}