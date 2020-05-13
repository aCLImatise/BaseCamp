version 1.0

task Para {
  input {
    Boolean verboseVerbose
    String? commandCommand
    String? commandCommandSpecific
    String? argumentsArguments
  }
  command <<<
    para \
      ~{commandCommand} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{commandCommandSpecific} \
      ~{argumentsArguments}
  >>>
}