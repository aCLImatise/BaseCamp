version 1.0

task TripailleInit {
  input {
    String? optionsOptions
  }
  command <<<
    tripaille init \
      ~{optionsOptions}
  >>>
}