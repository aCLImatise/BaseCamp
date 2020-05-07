version 1.0

task AwsSubcommand {
  input {
    String? commandCommand
    String? subcommandSubcommand
    String? parametersParameters
  }
  command <<<
    aws subcommand \
      ~{commandCommand} \
      ~{subcommandSubcommand} \
      ~{parametersParameters}
  >>>
}