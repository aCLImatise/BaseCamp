version 1.0

task ShannonCpp {
  input {
    String? subcommandSubcommand
  }
  command <<<
    shannon_cpp \
      ~{subcommandSubcommand}
  >>>
}