version 1.0

task GenomestripSubcommand {
  input {
    String? javaJavaOptions
    String? subcommandSubcommand
    String? subcommandSubcommandArgs
  }
  command <<<
    genomestrip subcommand \
      ~{javaJavaOptions} \
      ~{subcommandSubcommand} \
      ~{subcommandSubcommandArgs}
  >>>
}