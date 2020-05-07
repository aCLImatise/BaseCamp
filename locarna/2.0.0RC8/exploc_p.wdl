version 1.0

task ExplocP {
  input {
    Boolean manMan
    Boolean verboseVerbose
    Boolean expExpARnapParams
    Boolean locaLocaRnaParams
    Boolean outputOutput
    Boolean outputOutputTime
    Boolean manMan
    Boolean verboseVerbose
    Boolean expExpARnapParams
    Boolean locaLocaRnaParams
    Boolean outputOutput
    Boolean outputOutputTime
  }
  command <<<
    exploc_p \
      ~{true="--man" false="" manMan} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--exparnap-params" false="" expExpARnapParams} \
      ~{true="--locarna-params" false="" locaLocaRnaParams} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--output-time" false="" outputOutputTime} \
      ~{true="--man" false="" manMan} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--exparnap-params" false="" expExpARnapParams} \
      ~{true="--locarna-params" false="" locaLocaRnaParams} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--output-time" false="" outputOutputTime}
  >>>
}