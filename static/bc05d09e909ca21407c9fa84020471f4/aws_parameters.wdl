version 1.0

task AwsParameters {
  input {
    String? commandCommand
    String? subcommandSubcommand
    String? parametersParameters
  }
  command <<<
    aws parameters \
      ~{commandCommand} \
      ~{subcommandSubcommand} \
      ~{parametersParameters}
  >>>
}