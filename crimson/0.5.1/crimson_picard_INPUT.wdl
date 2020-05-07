version 1.0

task CrimsonPicardINPUT {
  input {
    String? optionsOptions
    String? inputInput
    String? outputOutput
  }
  command <<<
    crimson picard INPUT \
      ~{optionsOptions} \
      ~{inputInput} \
      ~{outputOutput}
  >>>
}