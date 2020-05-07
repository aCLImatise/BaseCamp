version 1.0

task AwsCommandParameters {
  input {
    String? subcommandSubcommand
    String? parametersParameters
  }
  command <<<
    aws command parameters \
      ~{subcommandSubcommand} \
      ~{parametersParameters}
  >>>
}