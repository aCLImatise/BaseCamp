version 1.0

task PoppunkTsne {
  input {
    String distancesDistances
    String outputOutput
    String perplexityPerplexity
    String verbosityVerbosity
  }
  command <<<
    poppunk_tsne \
      ~{if defined(distancesDistances) then ("--distances " +  '"' + distancesDistances + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(perplexityPerplexity) then ("--perplexity " +  '"' + perplexityPerplexity + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}