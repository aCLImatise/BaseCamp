version 1.0

task TripailleJobAddJobOPTIONSNAMECALLBACK {
  input {
    String? moduleModule
    String? callbackCallback
    String? argumentsArguments
  }
  command <<<
    tripaille job add_job OPTIONS NAME CALLBACK \
      ~{moduleModule} \
      ~{callbackCallback} \
      ~{argumentsArguments}
  >>>
}