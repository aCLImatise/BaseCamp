version 1.0

task CrimsonVepINPUT {
  input {
    String? optionsOptions
    String? inputInput
    String? outputOutput
  }
  command <<<
    crimson vep INPUT \
      ~{optionsOptions} \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}