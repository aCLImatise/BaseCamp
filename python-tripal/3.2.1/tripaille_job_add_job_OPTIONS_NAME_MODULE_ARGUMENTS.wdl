version 1.0

task TripailleJobAddJobOPTIONSNAMEMODULEARGUMENTS {
  input {
    String? callbackCallback
    String? argumentsArguments
  }
  command <<<
    tripaille job add_job OPTIONS NAME MODULE ARGUMENTS \
      ~{callbackCallback} \
      ~{argumentsArguments}
  >>>
}