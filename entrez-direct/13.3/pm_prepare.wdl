version 1.0

task PmPrepare {
  input {
    String modeMode
    Boolean parentsParents
    Boolean verboseVerbose
    Boolean zZ
    Boolean contextContext
  }
  command <<<
    pm-prepare \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="--parents" false="" parentsParents} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-Z" false="" zZ} \
      ~{true="--context" false="" contextContext}
  >>>
}