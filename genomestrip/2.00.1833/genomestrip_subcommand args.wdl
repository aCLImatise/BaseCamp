version 1.0

task GenomestripSubcommand args {
  input {
    String? javaJavaOptions
    String? subcommandSubcommand
    String? subcommandSubcommandArgs
  }
  command <<<
    genomestrip subcommand args \
      ~{javaJavaOptions} \
      ~{subcommandSubcommand} \
      ~{subcommandSubcommandArgs}
  >>>
}