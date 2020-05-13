version 1.0

task BxtoolsStats {
  input {
    Boolean verboseVerbose
    Boolean tagTag
  }
  command <<<
    bxtools stats \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--tag" false="" tagTag}
  >>>
}