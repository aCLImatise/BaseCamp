version 1.0

task SgaMerge {
  input {
    Boolean verboseVerbose
    String threadsThreads
    String prefixPrefix
    Boolean removeRemove
    String gapGapArray
    Boolean noNoSequence
    Boolean noNoForward
    Boolean noNoReverse
  }
  command <<<
    sga merge \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--remove" false="" removeRemove} \
      ~{if defined(gapGapArray) then ("--gap-array " +  '"' + gapGapArray + '"') else ""} \
      ~{true="--no-sequence" false="" noNoSequence} \
      ~{true="--no-forward" false="" noNoForward} \
      ~{true="--no-reverse" false="" noNoReverse}
  >>>
}