version 1.0

task CirclatorRequired arguments {
  input {
    String? commandCommand
    String? requiredRequiredArguments
  }
  command <<<
    circlator required arguments \
      ~{commandCommand} \
      ~{requiredRequiredArguments}
  >>>
}