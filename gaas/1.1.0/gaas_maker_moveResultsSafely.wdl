version 1.0

task GaasMakerMoveResultsSafely.sh {
  input {
    String modeMode
    Boolean parentsParents
    Boolean verboseVerbose
    Boolean zZ
    Boolean contextContext
  }
  command <<<
    gaas_maker_moveResultsSafely.sh \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="--parents" false="" parentsParents} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-Z" false="" zZ} \
      ~{true="--context" false="" contextContext}
  >>>
}