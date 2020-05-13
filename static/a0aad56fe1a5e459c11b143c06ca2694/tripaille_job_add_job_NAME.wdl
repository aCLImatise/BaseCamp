version 1.0

task TripailleJobAddJobNAME {
  input {
    String? optionsOptions
    String? nameName
    String? moduleModule
    String? callbackCallback
    String? argumentsArguments
  }
  command <<<
    tripaille job add_job NAME \
      ~{optionsOptions} \
      ~{nameName} \
      ~{moduleModule} \
      ~{callbackCallback} \
      ~{argumentsArguments}
  >>>
}