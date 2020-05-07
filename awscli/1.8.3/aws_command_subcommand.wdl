version 1.0

task AwsCommandSubcommand {
  input {
    String? parametersParameters
  }
  command <<<
    aws command subcommand \
      ~{parametersParameters}
  >>>
}