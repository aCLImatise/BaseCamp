version 1.0

task Guppy {
  input {
    Boolean cmdsCmds
    Boolean batchBatch
    Boolean quietQuiet
    Boolean helpHelp
  }
  command <<<
    guppy \
      ~{true="--cmds" false="" cmdsCmds} \
      ~{true="--batch" false="" batchBatch} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="-help" false="" helpHelp}
  >>>
}