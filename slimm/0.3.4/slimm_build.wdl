version 1.0

task SlimmBuild {
  input {
    Boolean versionVersionCheck
    String outputOutputFile
    String namesNames
    String nodesNodes
    Int batchBatch
    Boolean verboseVerbose
  }
  command <<<
    slimm_build \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(nodesNodes) then ("--nodes " +  '"' + nodesNodes + '"') else ""} \
      ~{if defined(batchBatch) then ("--batch " +  '"' + batchBatch + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}