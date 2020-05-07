version 1.0

task Mkdir {
  input {
    String modeMode
    Boolean parentsParents
    Boolean verboseVerbose
    Boolean zZ
    Boolean contextContext
  }
  command <<<
    mkdir \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="--parents" false="" parentsParents} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-Z" false="" zZ} \
      ~{true="--context" false="" contextContext}
  >>>
}