version 1.0

task TripailleJobAddJobMODULE {
  input {
    String? optionsOptions
    String? nameName
    String? moduleModule
    String? callbackCallback
    String? argumentsArguments
  }
  command <<<
    tripaille job add_job MODULE \
      ~{optionsOptions} \
      ~{nameName} \
      ~{moduleModule} \
      ~{callbackCallback} \
      ~{argumentsArguments}
  >>>
}