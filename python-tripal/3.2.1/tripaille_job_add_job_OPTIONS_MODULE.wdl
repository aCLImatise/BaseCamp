version 1.0

task TripailleJobAddJobOPTIONSMODULE {
  input {
    String? nameName
    String? moduleModule
    String? callbackCallback
    String? argumentsArguments
  }
  command <<<
    tripaille job add_job OPTIONS MODULE \
      ~{nameName} \
      ~{moduleModule} \
      ~{callbackCallback} \
      ~{argumentsArguments}
  >>>
}