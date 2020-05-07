version 1.0

task PanarooMsa {
  input {
    String threadsThreads
    Boolean verboseVerbose
    String outOutDir
    String alignmentAlignment
    String alignerAligner
    String coreCoreThreshold
  }
  command <<<
    panaroo-msa \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(alignmentAlignment) then ("--alignment " +  '"' + alignmentAlignment + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(coreCoreThreshold) then ("--core_threshold " +  '"' + coreCoreThreshold + '"') else ""}
  >>>
}