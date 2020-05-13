version 1.0

task GappaRandomRandomPlacements {
  input {
    String referenceReferenceTree
    String pqueryPqueryCount
    String outOutDir
    String fileFilePrefix
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa random random-placements \
      ~{optionsOptions} \
      ~{if defined(referenceReferenceTree) then ("--reference-tree " +  '"' + referenceReferenceTree + '"') else ""} \
      ~{if defined(pqueryPqueryCount) then ("--pquery-count " +  '"' + pqueryPqueryCount + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(fileFilePrefix) then ("--file-prefix " +  '"' + fileFilePrefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}