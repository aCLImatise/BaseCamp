version 1.0

task RtgHelpVcfsubset {
  input {
    File bedBedRegions
    File inputInput
    File outputOutput
    String regionRegion
    String keepKeepFilter
    String keepKeepFormat
    String keepKeepInfo
    String keepKeepSample
    String removeRemoveFilter
    Boolean removeRemoveFilters
    String removeRemoveFormat
    Boolean removeRemoveIds
    String removeRemoveInfo
    Boolean removeRemoveInfos
    Boolean removeRemoveQual
    String removeRemoveSample
    Boolean removeRemoveSamples
    Boolean noNoGzip
    Boolean noNoHeader
  }
  command <<<
    rtg help vcfsubset \
      ~{if defined(bedBedRegions) then ("--bed-regions " +  '"' + bedBedRegions + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(keepKeepFilter) then ("--keep-filter " +  '"' + keepKeepFilter + '"') else ""} \
      ~{if defined(keepKeepFormat) then ("--keep-format " +  '"' + keepKeepFormat + '"') else ""} \
      ~{if defined(keepKeepInfo) then ("--keep-info " +  '"' + keepKeepInfo + '"') else ""} \
      ~{if defined(keepKeepSample) then ("--keep-sample " +  '"' + keepKeepSample + '"') else ""} \
      ~{if defined(removeRemoveFilter) then ("--remove-filter " +  '"' + removeRemoveFilter + '"') else ""} \
      ~{true="--remove-filters" false="" removeRemoveFilters} \
      ~{if defined(removeRemoveFormat) then ("--remove-format " +  '"' + removeRemoveFormat + '"') else ""} \
      ~{true="--remove-ids" false="" removeRemoveIds} \
      ~{if defined(removeRemoveInfo) then ("--remove-info " +  '"' + removeRemoveInfo + '"') else ""} \
      ~{true="--remove-infos" false="" removeRemoveInfos} \
      ~{true="--remove-qual" false="" removeRemoveQual} \
      ~{if defined(removeRemoveSample) then ("--remove-sample " +  '"' + removeRemoveSample + '"') else ""} \
      ~{true="--remove-samples" false="" removeRemoveSamples} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{true="--no-header" false="" noNoHeader}
  >>>
}