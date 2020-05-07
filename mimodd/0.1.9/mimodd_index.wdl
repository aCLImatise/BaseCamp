version 1.0

task MimoddIndex {
  input {
    File outputOutput
    String threadsThreads
    Boolean quietQuiet
    Boolean verboseVerbose
    String idxIdxSeedSize
    String idxIdxSlack
    String idxIdxOverflow
    String? indexIndexType
    File? fileFileToIndex
  }
  command <<<
    mimodd index \
      ~{indexIndexType} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(idxIdxSeedSize) then ("--idx-seedsize " +  '"' + idxIdxSeedSize + '"') else ""} \
      ~{if defined(idxIdxSlack) then ("--idx-slack " +  '"' + idxIdxSlack + '"') else ""} \
      ~{if defined(idxIdxOverflow) then ("--idx-overflow " +  '"' + idxIdxOverflow + '"') else ""} \
      ~{fileFileToIndex}
  >>>
}