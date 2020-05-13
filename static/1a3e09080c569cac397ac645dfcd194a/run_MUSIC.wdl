version 1.0

task RunMUSIC.cshArguments {
  input {
    String? optionsOptions
    String? argumentsArguments
  }
  command <<<
    run_MUSIC.csh Arguments \
      ~{optionsOptions} \
      ~{argumentsArguments}
  >>>
}