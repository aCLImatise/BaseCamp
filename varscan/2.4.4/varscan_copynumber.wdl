version 1.0

task VarscanCopynumber {
  input {
    String minMinBaseQual
    String minMinMapQual
    String minMinCoverage
    String minMinSegmentSize
    Int maxMaxSegmentSize
    String pPValue
    String dataDataRatio
  }
  command <<<
    varscan copynumber \
      ~{if defined(minMinBaseQual) then ("--min-base-qual " +  '"' + minMinBaseQual + '"') else ""} \
      ~{if defined(minMinMapQual) then ("--min-map-qual " +  '"' + minMinMapQual + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(minMinSegmentSize) then ("--min-segment-size " +  '"' + minMinSegmentSize + '"') else ""} \
      ~{if defined(maxMaxSegmentSize) then ("--max-segment-size " +  '"' + maxMaxSegmentSize + '"') else ""} \
      ~{if defined(pPValue) then ("--p-value " +  '"' + pPValue + '"') else ""} \
      ~{if defined(dataDataRatio) then ("--data-ratio " +  '"' + dataDataRatio + '"') else ""}
  >>>
}