version 1.0

task Yapc {
  input {
    String smoothingSmoothingWindowWidth
    String smoothingSmoothingTimes
    Int minMinConcaveRegionWidth
    String truncateTruncateIdrInput
    String fixedFixedPeakHalfwidth
    Boolean pseudoPseudoReplicates
    Boolean recycleRecycle
    String? outputOutputPrefix
    String? conditionConditionRep1Rep2
  }
  command <<<
    yapc \
      ~{outputOutputPrefix} \
      ~{if defined(smoothingSmoothingWindowWidth) then ("--smoothing-window-width " +  '"' + smoothingSmoothingWindowWidth + '"') else ""} \
      ~{if defined(smoothingSmoothingTimes) then ("--smoothing-times " +  '"' + smoothingSmoothingTimes + '"') else ""} \
      ~{if defined(minMinConcaveRegionWidth) then ("--min-concave-region-width " +  '"' + minMinConcaveRegionWidth + '"') else ""} \
      ~{if defined(truncateTruncateIdrInput) then ("--truncate-idr-input " +  '"' + truncateTruncateIdrInput + '"') else ""} \
      ~{if defined(fixedFixedPeakHalfwidth) then ("--fixed-peak-halfwidth " +  '"' + fixedFixedPeakHalfwidth + '"') else ""} \
      ~{true="--pseudoreplicates" false="" pseudoPseudoReplicates} \
      ~{true="--recycle" false="" recycleRecycle} \
      ~{conditionConditionRep1Rep2}
  >>>
}