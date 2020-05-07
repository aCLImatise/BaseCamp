version 1.0

task TripailleJobAddJobARGUMENTS {
  input {
    String? optionsOptions
    String? nameName
    String? moduleModule
    String? callbackCallback
    String? argumentsArguments
  }
  command <<<
    tripaille job add_job ARGUMENTS \
      ~{optionsOptions} \
      ~{nameName} \
      ~{moduleModule} \
      ~{callbackCallback} \
      ~{argumentsArguments}
  >>>
}