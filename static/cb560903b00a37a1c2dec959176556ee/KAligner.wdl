version 1.0

task KAligner {
  input {
    Boolean multimapMultimap
    Boolean noNoMultimap
    String threadsThreads
    Boolean verboseVerbose
    Boolean noNoSam
    Boolean samSam
    Boolean seqSeq
  }
  command <<<
    KAligner \
      ~{true="--multimap" false="" multimapMultimap} \
      ~{true="--no-multimap" false="" noNoMultimap} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--no-sam" false="" noNoSam} \
      ~{true="--sam" false="" samSam} \
      ~{true="--seq" false="" seqSeq}
  >>>
}