version 1.0

task TripailleJobAddJobOPTIONSARGUMENTS {
  input {
    String? nameName
    String? moduleModule
    String? callbackCallback
    String? argumentsArguments
  }
  command <<<
    tripaille job add_job OPTIONS ARGUMENTS \
      ~{nameName} \
      ~{moduleModule} \
      ~{callbackCallback} \
      ~{argumentsArguments}
  >>>
}