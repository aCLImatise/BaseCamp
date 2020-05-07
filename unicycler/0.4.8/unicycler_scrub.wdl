version 1.0

task UnicyclerScrub {
  input {
    String inputInput
    String outOut
    String readsReads
    String trimTrim
    String splitSplit
    Int minMinSplitSize
    Boolean discardDiscardChimeras
    String threadsThreads
    Boolean keepKeepPaf
    String parametersParameters
    String verbosityVerbosity
  }
  command <<<
    unicycler_scrub \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(trimTrim) then ("--trim " +  '"' + trimTrim + '"') else ""} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{if defined(minMinSplitSize) then ("--min_split_size " +  '"' + minMinSplitSize + '"') else ""} \
      ~{true="--discard_chimeras" false="" discardDiscardChimeras} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--keep_paf" false="" keepKeepPaf} \
      ~{if defined(parametersParameters) then ("--parameters " +  '"' + parametersParameters + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}