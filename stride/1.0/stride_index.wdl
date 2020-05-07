version 1.0

task StrideIndex {
  input {
    Boolean verboseVerbose
    String algorithmAlgorithm
    String threadsThreads
    String prefixPrefix
    Boolean noNoReverse
    Boolean noNoForward
  }
  command <<<
    stride index \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--no-reverse" false="" noNoReverse} \
      ~{true="--no-forward" false="" noNoForward}
  >>>
}