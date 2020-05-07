version 1.0

task VarAgg {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    String ioIoThreads
    Boolean outputOutput
    String inputInputPanel
    String inputInputPed
    String inputInputFastA
  }
  command <<<
    var-agg \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(ioIoThreads) then ("--io-threads " +  '"' + ioIoThreads + '"') else ""} \
      ~{true="--output" false="" outputOutput} \
      ~{if defined(inputInputPanel) then ("--input-panel " +  '"' + inputInputPanel + '"') else ""} \
      ~{if defined(inputInputPed) then ("--input-ped " +  '"' + inputInputPed + '"') else ""} \
      ~{if defined(inputInputFastA) then ("--input-fasta " +  '"' + inputInputFastA + '"') else ""}
  >>>
}