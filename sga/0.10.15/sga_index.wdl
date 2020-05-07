version 1.0

task SgaIndex {
  input {
    Boolean verboseVerbose
    String algorithmAlgorithm
    String diskDisk
    String threadsThreads
    Boolean checkCheck
    String prefixPrefix
    Boolean noNoReverse
    Boolean noNoForward
    Boolean noNoSai
    String gapGapArray
  }
  command <<<
    sga index \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(diskDisk) then ("--disk " +  '"' + diskDisk + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--no-reverse" false="" noNoReverse} \
      ~{true="--no-forward" false="" noNoForward} \
      ~{true="--no-sai" false="" noNoSai} \
      ~{if defined(gapGapArray) then ("--gap-array " +  '"' + gapGapArray + '"') else ""}
  >>>
}