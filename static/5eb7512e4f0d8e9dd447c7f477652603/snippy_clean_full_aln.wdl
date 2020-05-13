version 1.0

task SnippyCleanFullAln {
  input {
    Boolean debugDebug
    String toTo
  }
  command <<<
    snippy-clean_full_aln \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(toTo) then ("--to " +  '"' + toTo + '"') else ""}
  >>>
}