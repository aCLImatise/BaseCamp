version 1.0

task TripailleDbTune {
  input {
    String? optionsOptions
  }
  command <<<
    tripaille db tune \
      ~{optionsOptions}
  >>>
}