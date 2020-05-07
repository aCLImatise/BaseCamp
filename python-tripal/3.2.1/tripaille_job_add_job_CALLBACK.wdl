version 1.0

task TripailleJobAddJobCALLBACK {
  input {
    String? optionsOptions
    String? nameName
    String? moduleModule
    String? callbackCallback
    String? argumentsArguments
  }
  command <<<
    tripaille job add_job CALLBACK \
      ~{optionsOptions} \
      ~{nameName} \
      ~{moduleModule} \
      ~{callbackCallback} \
      ~{argumentsArguments}
  >>>
}