version 1.0

task GotohScan {
  input {
    String? argumentsArguments
  }
  command <<<
    GotohScan \
      ~{argumentsArguments}
  >>>
}