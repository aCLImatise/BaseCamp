version 1.0

task CsbHhfrag {
  input {
    String hhHhSearch
    String databaseDatabase
    Int minMin
    Int maxMax
    String stepStep
    String cpuCpu
    String gapGapFilling
    String filteredFilteredFilling
    Boolean filteredFilteredMap
    Boolean cCAlpha
    String confidenceConfidenceThreshold
    String verbosityVerbosity
    String outputOutput
    String? queryQuery
  }
  command <<<
    csb-hhfrag \
      ~{queryQuery} \
      ~{if defined(hhHhSearch) then ("--hhsearch " +  '"' + hhHhSearch + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(gapGapFilling) then ("--gap-filling " +  '"' + gapGapFilling + '"') else ""} \
      ~{if defined(filteredFilteredFilling) then ("--filtered-filling " +  '"' + filteredFilteredFilling + '"') else ""} \
      ~{true="--filtered-map" false="" filteredFilteredMap} \
      ~{true="--c-alpha" false="" cCAlpha} \
      ~{if defined(confidenceConfidenceThreshold) then ("--confidence-threshold " +  '"' + confidenceConfidenceThreshold + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}