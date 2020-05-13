version 1.0

task Mapsembler2Extremities {
  input {
    Boolean kK
    Boolean startersStarters
    Boolean readsReads
    Boolean outputOutput
    Boolean minMinSolidSubKmEr
    Boolean debugDebug
    Boolean nbNbCores
    Boolean verboseVerbose
  }
  command <<<
    mapsembler2_extremities \
      ~{true="--k" false="" kK} \
      ~{true="--starters" false="" startersStarters} \
      ~{true="--reads" false="" readsReads} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--min-solid-subkmer" false="" minMinSolidSubKmEr} \
      ~{true="-debug" false="" debugDebug} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}