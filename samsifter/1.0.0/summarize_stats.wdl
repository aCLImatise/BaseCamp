version 1.0

task SummarizeStats {
  input {
    Boolean verboseVerbose
    Boolean debugDebug
    String prefixPrefix
  }
  command <<<
    summarize_stats \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""}
  >>>
}