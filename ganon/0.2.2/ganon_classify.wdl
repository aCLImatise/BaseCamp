version 1.0

task GanonClassify {
  input {
    Boolean cC
    Boolean kK
    Boolean eE
    Boolean uU
    Boolean lL
    String offsetOffset
    String outputOutputPrefix
    Boolean outputOutputAll
    Boolean outputOutputUnclassified
    Boolean outputOutputSingle
    Boolean ranksRanks
    String threadsThreads
    Boolean verboseVerbose
    Boolean dD
    Boolean rR
    Boolean pP
  }
  command <<<
    ganon classify \
      ~{true="-c" false="" cC} \
      ~{true="-k" false="" kK} \
      ~{true="-e" false="" eE} \
      ~{true="-u" false="" uU} \
      ~{true="-l" false="" lL} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--output-all" false="" outputOutputAll} \
      ~{true="--output-unclassified" false="" outputOutputUnclassified} \
      ~{true="--output-single" false="" outputOutputSingle} \
      ~{true="--ranks" false="" ranksRanks} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-d" false="" dD} \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP}
  >>>
}