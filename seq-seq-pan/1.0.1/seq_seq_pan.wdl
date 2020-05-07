version 1.0

task SeqSeqPan {
  input {
    String workingWorking
    String? subcommandSubcommand
  }
  command <<<
    seq-seq-pan \
      ~{subcommandSubcommand} \
      ~{if defined(workingWorking) then ("- Working " +  '"' + workingWorking + '"') else ""}
  >>>
}