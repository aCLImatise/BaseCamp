version 1.0

task CirclatorCommand {
  input {
    String? requiredRequiredArguments
  }
  command <<<
    circlator command \
      ~{requiredRequiredArguments}
  >>>
}