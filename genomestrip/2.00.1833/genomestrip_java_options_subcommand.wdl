version 1.0

task GenomestripJavaOptionsSubcommand {
  input {
    String? subcommandSubcommandArgs
  }
  command <<<
    genomestrip java_options subcommand \
      ~{subcommandSubcommandArgs}
  >>>
}