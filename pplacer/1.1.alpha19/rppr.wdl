version 1.0

task Rppr {
  input {
    Boolean cmdsCmds
    Boolean batchBatch
    Boolean quietQuiet
    Boolean helpHelp
    String? rpRpPr
  }
  command <<<
    rppr \
      ~{rpRpPr} \
      ~{true="--cmds" false="" cmdsCmds} \
      ~{true="--batch" false="" batchBatch} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="-help" false="" helpHelp}
  >>>
}