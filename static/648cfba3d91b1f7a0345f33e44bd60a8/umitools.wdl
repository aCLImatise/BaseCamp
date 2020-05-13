version 1.0

task Umitools {
  input {
    String? subcommandSubcommand
  }
  command <<<
    umitools \
      ~{subcommandSubcommand}
  >>>
}