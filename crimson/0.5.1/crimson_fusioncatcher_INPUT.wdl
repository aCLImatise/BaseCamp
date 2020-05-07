version 1.0

task CrimsonFusioncatcherINPUT {
  input {
    String? optionsOptions
    String? inputInput
    String? outputOutput
  }
  command <<<
    crimson fusioncatcher INPUT \
      ~{optionsOptions} \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}