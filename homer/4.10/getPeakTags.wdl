version 1.0

task GetPeakTags {
  input {
    Boolean startStart
    Boolean endEnd
    Boolean offsetOffset
    Boolean fixedFixed
    Boolean countCount
    Boolean peakPeakTags
    Boolean tagsTags
    Boolean tagTagAutocorrelation
    Boolean centerCenter
    Boolean orOr
    Boolean countCount
    Boolean peakPeakSnps
  }
  command <<<
    getPeakTags \
      ~{true="-start" false="" startStart} \
      ~{true="-end" false="" endEnd} \
      ~{true="-offset" false="" offsetOffset} \
      ~{true="-fixed" false="" fixedFixed} \
      ~{true="-count" false="" countCount} \
      ~{true="-peaktags" false="" peakPeakTags} \
      ~{true="-tags" false="" tagsTags} \
      ~{true="-tagAutocorrelation" false="" tagTagAutocorrelation} \
      ~{true="-center" false="" centerCenter} \
      ~{true="-or-" false="" orOr} \
      ~{true="-count" false="" countCount} \
      ~{true="-peaksnps" false="" peakPeakSnps}
  >>>
}