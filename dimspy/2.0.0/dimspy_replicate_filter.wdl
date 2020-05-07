version 1.0

task DimspyReplicateFilter {
  input {
    String inputInput
    String outputOutput
    String ppmPpm
    String replicatesReplicates
    Int minMinPeakPresent
    String rsdRsdThreshold
    File fileFileList
    String reportReport
    String blockBlockSize
    String nNCpus
  }
  command <<<
    dimspy replicate-filter \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(ppmPpm) then ("--ppm " +  '"' + ppmPpm + '"') else ""} \
      ~{if defined(replicatesReplicates) then ("--replicates " +  '"' + replicatesReplicates + '"') else ""} \
      ~{if defined(minMinPeakPresent) then ("--min-peak-present " +  '"' + minMinPeakPresent + '"') else ""} \
      ~{if defined(rsdRsdThreshold) then ("--rsd-threshold " +  '"' + rsdRsdThreshold + '"') else ""} \
      ~{if defined(fileFileList) then ("--filelist " +  '"' + fileFileList + '"') else ""} \
      ~{if defined(reportReport) then ("--report " +  '"' + reportReport + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--block-size " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(nNCpus) then ("--ncpus " +  '"' + nNCpus + '"') else ""}
  >>>
}