version 1.0

task TripailleJobAddJobOPTIONSNAMEARGUMENTS {
  input {
    String? moduleModule
    String? callbackCallback
    String? argumentsArguments
  }
  command <<<
    tripaille job add_job OPTIONS NAME ARGUMENTS \
      ~{moduleModule} \
      ~{callbackCallback} \
      ~{argumentsArguments}
  >>>
}