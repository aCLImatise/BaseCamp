version 1.0

task GenomestripJavaOptionsSubcommand args {
  input {
    String? subcommandSubcommand
    String? subcommandSubcommandArgs
  }
  command <<<
    genomestrip java_options subcommand args \
      ~{subcommandSubcommand} \
      ~{subcommandSubcommandArgs}
  >>>
}