version 1.0

task RtgVcfsplit {
  input {
    File bedBedRegions
    File inputInput
    String outputOutput
    String regionRegion
    Boolean keepKeepRef
    String keepKeepSample
    String removeRemoveSample
    Boolean noNoGzip
  }
  command <<<
    rtg vcfsplit \
      ~{if defined(bedBedRegions) then ("--bed-regions " +  '"' + bedBedRegions + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{true="--keep-ref" false="" keepKeepRef} \
      ~{if defined(keepKeepSample) then ("--keep-sample " +  '"' + keepKeepSample + '"') else ""} \
      ~{if defined(removeRemoveSample) then ("--remove-sample " +  '"' + removeRemoveSample + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip}
  >>>
}