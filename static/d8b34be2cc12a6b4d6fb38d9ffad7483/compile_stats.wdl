version 1.0

task CompileStats {
  input {
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean removeRemove
    String prefixPrefix
  }
  command <<<
    compile_stats \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--remove" false="" removeRemove} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""}
  >>>
}