version 1.0

task OutriggerPsi {
  input {
    String indexIndex
    String outputOutput
    String junctionJunctionReadsCsv
    Boolean jJ
    Boolean bB
    Int minMinReads
    String methodMethod
    String unevenUnevenCoverageMultiplier
    Boolean ignoreIgnoreMultiMapping
    String readsReadsCol
    String sampleSampleIdCol
    String junctionJunctionIdCol
    Boolean debugDebug
    String nNJobs
    Boolean lowLowMemory
  }
  command <<<
    outrigger psi \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(junctionJunctionReadsCsv) then ("--junction-reads-csv " +  '"' + junctionJunctionReadsCsv + '"') else ""} \
      ~{true="-j" false="" jJ} \
      ~{true="-b" false="" bB} \
      ~{if defined(minMinReads) then ("--min-reads " +  '"' + minMinReads + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(unevenUnevenCoverageMultiplier) then ("--uneven-coverage-multiplier " +  '"' + unevenUnevenCoverageMultiplier + '"') else ""} \
      ~{true="--ignore-multimapping" false="" ignoreIgnoreMultiMapping} \
      ~{if defined(readsReadsCol) then ("--reads-col " +  '"' + readsReadsCol + '"') else ""} \
      ~{if defined(sampleSampleIdCol) then ("--sample-id-col " +  '"' + sampleSampleIdCol + '"') else ""} \
      ~{if defined(junctionJunctionIdCol) then ("--junction-id-col " +  '"' + junctionJunctionIdCol + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(nNJobs) then ("--n-jobs " +  '"' + nNJobs + '"') else ""} \
      ~{true="--low-memory" false="" lowLowMemory}
  >>>
}