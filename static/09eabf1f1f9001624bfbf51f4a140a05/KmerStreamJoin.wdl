version 1.0

task KmerStreamJoin {
  input {
    Boolean verboseVerbose
    String? kmKmErStreamJoin
    String? mergedMergedFile
  }
  command <<<
    KmerStreamJoin \
      ~{kmKmErStreamJoin} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{mergedMergedFile}
  >>>
}