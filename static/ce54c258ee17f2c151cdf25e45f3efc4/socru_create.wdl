version 1.0

task SocruCreate {
  input {
    Int maxMaxBasesFromEnds
    String threadsThreads
    String fragmentFragmentOrder
    String dnaDnaAFastA
    String difDifFastA
    Boolean debugDebug
    Boolean verboseVerbose
    String? outputOutputDirectory
    String? inputInputFile
  }
  command <<<
    socru_create \
      ~{outputOutputDirectory} \
      ~{if defined(maxMaxBasesFromEnds) then ("--max_bases_from_ends " +  '"' + maxMaxBasesFromEnds + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(fragmentFragmentOrder) then ("--fragment_order " +  '"' + fragmentFragmentOrder + '"') else ""} \
      ~{if defined(dnaDnaAFastA) then ("--dnaa_fasta " +  '"' + dnaDnaAFastA + '"') else ""} \
      ~{if defined(difDifFastA) then ("--dif_fasta " +  '"' + difDifFastA + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{inputInputFile}
  >>>
}